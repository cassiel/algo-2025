x(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.farm-2019.core :as c]
            [net.cassiel.farm-2019.params :as px]
            [net.cassiel.farm-2019.sequencing :as seq]
            [net.cassiel.farm-2019.control :as ctrl]
            [net.cassiel.farm-2019.conformer :as cx]
            [cljs-promises.core :as p]
            [cljs-promises.async :as a :refer-macros [<?]]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [clojure.spec.alpha :as s]
            [spectacles.lenses :as lens]
            [goog.string :as gstring]
            [goog.string.format]))

;; Clojure REPL needs to be running before Max's Node.js kicks off (otherwise
;; spurious web socket errors); then launch Node.js to bring up CLJS repl.

;; All step sequences in one atom under `:sequences`. They're named via a map.
;; `:messages`: ???

(def SEQ (atom {:sequences {} :messages nil}))

;; How to wipe everything.
(reset! SEQ {:sequences {} :messages nil})

;; To start: Max DSP on, transport on.



(->>
 (reset! SEQ {:sequences {:main {1 [[0 :Basic :note (+ 48 2) 40 100]
                                    [0.5 :Basic :note (+ 48 2) 40 100]
                                    [0.75 :Basic :note (+ 48 2) 40 100]]
                                 3 [[0 :Basic :note (+ 48 2 ) 20 100]
                                    [0.25 :Basic :note (+ 48 2) 40 100]
                                    [0.5 :Basic :note (+ 60 2) 40 100]
                                    [0.75 :Basic :note (+ 60 2) 40 100]
]
                                 4 [[0 :Basic :note (+ 36 2) 20 100]
                                    [0.5 :Basic :note (+ 48 2) 20 100]
                                    [0.75 :Basic :note (+ 36 2) 20 100]]}

                          :FFF {1 [[0 :Mini-Filter :param :Cutoff 0.5]
                                   [0.5 :Mini-Filter :param :Cutoff 0.0]]
                                2 [[0 :Mini-Filter :param :Cutoff 0.5]
                                   [0.5 :Mini-Filter :param :Cutoff 0.0]]
                                3 [[0 :Mini-Filter :param :Cutoff 0.4]]
                                4 [[0 :Mini-Filter :param :Cutoff 0.45]]}
                          #_ :sub #_ {1 [[0 :A]
                                   [0.5 :B]]}}
             :messages nil})
  (cx/conformer ::seq/sequencer-state))

(->>
 (reset! SEQ {:sequences {:FFF {1 [[0 :Mini-Filter :param :Cutoff 0.3]]
                                2 [[0 :Mini-Filter :param :Cutoff 0.8]
                                   [0.5 :Mini-Filter :param :Cutoff 0.0]]
                                3 [[0 :Mini-Filter :param :Cutoff 0.4]]
                                4 [[0 :Mini-Filter :param :Cutoff 0.45]]}
                          :GGG {1 [[0 :A :B :C]]}}
            :messages nil})
  (cx/conformer ::seq/sequencer-state))

;; All VST parameters that we bring in come here:
(def PARAMS (atom {}))
(deref PARAMS)


;; TEST

(deref SEQ)
(seq/process-request (deref SEQ) 1)


;; Messages out to Max:
;; "win" [name] [1/0]: open or close named window (audio, basic, enso)
;; "now" [...m...]: output message
;; "seq" "add" "main" [pos] [...m...]: schedule message
;; "mix" "set" [x] [y] [db]: mixet setting

;; Messages [...m...]:
;; [device] "note" [p] [v] [d]: MIDI note with duration
;; [device] "param" [name/id] [val]: parameter change
;; [device] "params": request parameter names
;; [device] "get" [name-or-id]: request parameter value
;; [device] :plugged [0/1]: unplug/replug device to reset to INIT

;; Incoming:
;; "request" [beat]: request for messages for this beat (via "seq add")
;; "pname" [device] [param-name]: incoming parameter name
;; "pvalue" [device] [param-id] [value] [value-str]: incoming parameter value (such as change)

;; Generic handler: our only means to bring any Max into the CS world:

(ctrl/handle :request
             (fn [pos]
               (let [{:keys [messages]} (swap! SEQ seq/process-request pos)]
                 (doseq [x messages]
                   (apply c/xmit :seq :add :main x))))

             :pname
             (fn [& args] (apply px/pname-in PARAMS args))

             :pvalue
             (fn [& args] (apply px/pvalue-in PARAMS args)))


#_ (doto c/max-api
  (.removeHandlers "request")
  (.addHandler "request"
               (fn [pos]
                 (let [{:keys [messages]} (swap! SEQ seq/process-request pos)]
                   (doseq [x messages]
                     (apply c/xmit :seq :add :main x)))))

  ;; Parameter names in so that we can store them.
  (.removeHandlers "pname")

  ;; (These suspension forms so that we can re-bind quickly for development.
  ;; We should perhaps try to use symbol forms here.)
  (.addHandler "pname" (fn [& args] (apply px/pname-in PARAMS args)))

  (.removeHandlers "pvalue")
  (.addHandler "pvalue" (fn [& args] (apply px/pvalue-in PARAMS args))))

;; Tests:

(ctrl/window :seq 0)
(ctrl/window :main 1)
(ctrl/window :Enso 1)
(ctrl/window :Replika_XT 1)
(ctrl/window :Mini-Filter 0)
(ctrl/window :Basic 1)
(ctrl/window :audio 1)

(px/request-params PARAMS :Basic)
(px/request-params PARAMS :Enso)
(px/request-params PARAMS :Replika_XT)
(px/request-params PARAMS :Mini-Filter)

(reset! PARAMS nil)
(deref PARAMS)

(px/get-matching PARAMS :Basic #"LFO")
(px/get-matching PARAMS :Basic #"Flt")
(px/get-matching PARAMS :Enso #"Link")
(px/get-matching PARAMS :Enso #"Mode")
(px/get-matching PARAMS :Enso #"Dry")
;; Fetch to dictionary, not CS world:
(px/get-matching-to-dict PARAMS :Basic #"LFOWave")
(println (px/get-matching PARAMS :Enso #"Speed"))
(px/get-matching PARAMS :Replika_XT #"Mix")
(px/get-matching-to-dict PARAMS :Mini-Filter #"Cutoff")
(px/get-matching PARAMS :Basic #"Filter")

;; ----- TESTING -----
;; Complete reload of Replika XT

(ctrl/window :Replika_XT 1)

(go
  (<! (ctrl/reset-device :Replika_XT))
  (<! (px/request-params PARAMS :Replika_XT))
  (<! (px/xmit-some-params-now :Replika_XT [:Modulation_Mode :Pitch_Shifter]))
  (<! (px/request-params PARAMS :Replika_XT))
  (<! (px/xmit-some-params-now :Replika_XT
                               [:PS_Shift_L :+12]
                               [:PS_Shift_R :+7]
                               [:PS_Mix 1]
                               [:Mix 1]
                               )))


(go (<! (px/xmit-some-params-now :Basic [:Flt1Frq 0.05])))
(go (<! (px/xmit-some-params-now :Basic [:Flt1Res 0.8])))

(deref PARAMS)
(reset! PARAMS {})

;; Record and Overdub appear to fire on quantized locations.
(px/xmit-some-params-now :Enso [:Mode :Record])
(px/xmit-some-params-now :Enso [:Mode :Overdub])

;; ----- SETUP -----
(ctrl/reset-device :Replika_XT)
(ctrl/reset-device :Enso)
(ctrl/reset-device :Basic)
(ctrl/reset-device :Mini-Filter)

(ctrl/unload-all [:Basic :Enso :Mini-Filter :Replika_XT])

;; Generally, we use core.async channels to stagger timing: every request function
;; returns a timeout channel.
(go
  (<! (px/request-params PARAMS :Basic))
  (<! (px/request-params PARAMS :Enso))
  (<! (px/request-params PARAMS :Replika_XT))
  (<! (px/request-params PARAMS :Mini-Filter)))

(ctrl/mute-all)

;; ----- TAPE -----

(go
  ;; RESET
  (do (<! (ctrl/reset-device :Enso))
      (<! (px/request-params PARAMS :Enso)))
  ;; CONFIGURE
  (<! (px/xmit-some-params-now :Enso
                               [:Link_Speeds :Off]
                               [:Play_Speed :-1.0]
                               [:Rec_Speed :+1.0]
                               [:Dry_Level 0]
                               [:Feedback 0]
                               [:Mode :Stop])))

(px/get-matching-to-dict PARAMS :Enso #"Speed")

;; ICLC Two bar loop:
(px/xmit-some-params-now :Enso [:Mode :Record])
(px/xmit-some-params-now :Enso [:Mode :Overdub])
(px/xmit-some-params-now :Enso [:Mode :Stop])

(ctrl/window :Enso 1)

(px/xmit-some-params-now :Enso [:Play_Speed :-0.5])

;; ICLC: hear Basic:
(ctrl/mix :Basic :IO -40 5)

(ctrl/mix :Basic :Enso 0 5)

;; Bring in Enso:
(ctrl/mix :Enso :Enso -40)
(ctrl/mix :IO :Enso 0 10)
(ctrl/mix :Enso :IO 0 10)





;; TODO: Can switch speeds? Perhaps, by quantizing through the sequencer?
;;(px/xmit-some-params-now :Enso [:Play_Speed :-2.0])

;; Add: slight feedback through the matrix:
;; SPACE
#_ (px/xmit-some-params-now :Enso [:Play_Speed :-2.0])
(px/xmit-some-params-now :Enso
                         [:Play_Speed :-1.0]
                         [:Rec_Speed :+2.0])

;; TAPE->WHALE?
#_ (px/xmit-some-params-now :Enso [:Play_Speed :-0.5])
(px/xmit-some-params-now :Enso
                         [:Play_Speed :-1.0]
                         [:Rec_Speed :+2.0])

;; DRY TAPE
(px/xmit-some-params-now :Enso
                         [:Play_Speed :-1.0]
                         [:Rec_Speed :+1.0])

;; At some stage, ramp up feedback
(px/xmit-some-params-now :Enso [:Feedback 0.75])
(ctrl/mix :Enso :Enso -40)

;; TODO: select and use Vintage reverb (sparingly).


;; ----- ELIZABETHAN -----
;; Mix: Replika - TODO switch to Diffusion (and reload params) with reverb out.
(ctrl/mix :Enso :Replika_XT 0 10)
(ctrl/mix :Replika_XT :IO 0 10)

(ctrl/window :Replika_XT 1)

(go
  ;; RESET
  #_ (do
    (<! (ctrl/reset-device :Replika_XT))
    (<! (px/request-params PARAMS :Replika_XT))
    (<! (px/xmit-some-params-now :Replika_XT
                                 [:Modulation_Mode :Pitch_Shifter]
                                 [:Delay_Mode :Diffusion]))
    (<! (px/request-params PARAMS :Replika_XT)))
  ;; CONFIGURE

  ;; TODO: reverb (Vintage?) mix down to 0%.
  (<! (px/xmit-some-params-now :Replika_XT
                               [:PS_Shift_L :+7]
                               [:PS_Shift_R :-12]
                               [:Time_Mode :Dotted]
                               [:Delay_Time 0.4] ; dotted 1/8? TODO symbolic form?
                               [:Feedback 0.0]
                               [:Ping_Pong 0]
                               [:Amount 0] ; (Diffusion)
                               [:Size 0.5]
                               [:PS_Mix 1]
                               [:Mix 1])))
;; TODO: all Replika reverb off
;; TODO: switch to Diffusion in preparation


;; Transition, remove Enso, cut across to just Replika
(do
  (px/xmit-some-params-now :Enso [:Feedback 0])
    (ctrl/mix :Enso :Replika_XT -40 10)
  (ctrl/mix :IO :Replika_XT 0 10)
  (ctrl/mix :Replika_XT :IO 0 10)
  (ctrl/mix :Enso :IO -40 10)
  (ctrl/mix :IO :Enso -40 10)
  (ctrl/mix :Enso :Enso -40 10))



;; ----- ==> MERMAID - just Replika param changes -----
(px/xmit-some-params-now :Replika_XT
                         [:Amount 0.18]         ; Bringing in Diffusion
                         [:Feedback 0.25]
                         [:PS_Shift_L :+7]
                         [:PS_Shift_R :+7])

;; Listen for E (5th on A):
;; E A C
(px/xmit-some-params-now :Replika_XT
                         [:Feedback 0]
                         [:PS_Shift_L :-4]
                         [:PS_Shift_R :-7])

;; D F# A C
(px/xmit-some-params-now :Replika_XT
                         [:Feedback 0]
                         [:PS_Shift_L :+4]
                         [:PS_Shift_R :+10])

;; F A B C
(px/xmit-some-params-now :Replika_XT
                         [:Feedback 0]
                         [:PS_Shift_L :+4]
                         [:PS_Shift_R :+6])

;; TODO: rhythmic component - sub-bass - not tonal



(go
  ;; RESET
  (do
    (<! (ctrl/reset-device :Replika_XT))
    (<! (px/request-params PARAMS :Replika_XT))
    (<! (px/xmit-some-params-now :Replika_XT
                                 [:Modulation_Mode :Pitch_Shifter]
                                 [:Delay_Mode :Diffusion]))
    (<! (px/request-params PARAMS :Replika_XT)))
  ;; CONFIGURE
  (<! (px/xmit-some-params-now :Replika_XT
                               [:PS_Shift_L :0]
                               [:PS_Shift_R :0]
                               [:PS_Mix 1]
                               [:Time_Mode :Dotted]
                               [:Delay_Time 0.4] ; dotted 1/8? TODO symbolic form?
                               [:Feedback 0.25]
                               [:Ping_Pong 1]
                               [:Size 0.5]
                               [:Amount 0] ; (Diffusion)
                               [:Mix 1])))

(ctrl/window :Replika_XT 1)
(ctrl/mix :Enso :Replika_XT 0)
(ctrl/mix :Replika_XT :IO -10)
(px/xmit-some-params-now :Replika_XT [:Amount 0.6])







;; Add some reverb:

(ctrl/mix :IO :Replika_XT -10)
(ctrl/mix :Replika_XT :IO -10)
(px/xmit-some-params-now :Replika_XT [:Amount 0.1])

;; ----- TODO need master volume control




(px/get-matching PARAMS :Replika_XT #"Modu")
(px/get-matching-to-dict PARAMS :Replika_XT #"PS")

(px/get-matching PARAMS :Replika_XT #"PS")

(px/get-matching PARAMS :Mini-Filter #"Res")

;; Reload!
(swap! px/param-tracking assoc :Replika_XT {})
(px/request-params PARAMS :Replika_XT)

;; ----- LIGETI -----
(ctrl/mute-all)

;; To start: no Enso, straight through Replika.
(do
  (ctrl/mix :IO :Replika_XT 0)
  (ctrl/mix :Replika_XT :IO 0)
  (ctrl/mix :IO :Enso -40)
  (ctrl/mix :Enso :Replika_XT -40)
  (ctrl/mix :IO :IO -5))

(ctrl/window :Enso 1)
(ctrl/window :Replika_XT 1)

;; Replika
(go
  ;; RESET
  #_ (do
    (<! (ctrl/reset-device :Replika_XT))
    (<! (px/request-params PARAMS :Replika_XT))
    (<! (px/xmit-some-params-now :Replika_XT
                                 [:Modulation_Mode :Pitch_Shifter]
                                 [:Delay_Mode :Diffusion]))
    (<! (px/request-params PARAMS :Replika_XT)))
  ;; CONFIGURE
  (<! (px/xmit-some-params-now :Replika_XT
                               [:PS_Shift_L :+7]
                               [:PS_Shift_R :-12]
                               [:PS_Mix 1]
                               [:Size 0.8]
                               [:Mix 1]
                               [:Time_Mode :Straight]
                               [:Ping_Pong 0] ; IMPORTANT: casc. 5ths and low +ves.
                               [:Delay_Time 0.5] ; 1/4
                               [:Amount 1]
                               [:Feedback 0.5])))

(ctrl/window :Enso 1)

;; ---
;; Feedback 45%?
;; Delay 1/2?

;;(px/xmit-some-params-now :Replika_XT [:Mix 1])

(px/get-matching-to-dict PARAMS :Replika_XT #"Mix")

;; (Forensic investigation:)
(px/xmit-some-params-now :Replika_XT
                         [:PS_Shift_L :-5]
                         [:PS_Shift_R :+6]
                         [:PS_Mix 0.5]
                         [:Amount 0.5]
                         [:Feedback 0])

;; Enso
(go
  ;; RESET
  (do (<! (ctrl/reset-device :Enso))
      (<! (px/request-params PARAMS :Enso)))
  ;; CONFIGURE
  (do
    (<! (px/xmit-some-params-now :Enso
                                 [:Link_Speeds :Off]
                                 [:Play_Speed :+1.0]
                                 [:Rec_Speed :-0.5]
                                 [:Dry_Level 0]
                                 [:Feedback 0.5]))))

;;(px/xmit-some-params-now :Enso [:Feedback 0.8])

;; 4 bars?
(px/xmit-some-params-now :Enso [:Mode :Record])
(px/xmit-some-params-now :Enso [:Mode :Overdub])

;; Gradual fade over to IO->Enso->Replika:

;; (And lower PS mix when Enso running.)
(px/xmit-some-params-now :Replika_XT [:PS_Mix 0.5])

(do
 (ctrl/mix :IO :Enso 0 10)
 (ctrl/mix :Enso :Replika_XT 0 10))
;; Then:
(ctrl/mix :IO :Replika_XT -40 10)

;; FINAL ENDING!:
(px/xmit-some-params-now :Enso [:Feedback 0])





;; ----- TURBO BASIC -----
(ctrl/window :Basic 1)

(swap! SEQ assoc-in [:sequences :main] {1 [[0 :Basic :note (+ 36 2) 70 50]]})

(ctrl/mix :Basic :IO -40 5)

(ctrl/mix :IO :Mini-Filter -40)
(ctrl/mix :IO :IO -10)

(swap! SEQ assoc-in [:sequences :FFF] {1 [[0 :Mini-Filter :param :Cutoff 0.4]]
                                       2 [[0 :Mini-Filter :param :Cutoff 0.6]
                                          [0.5 :Mini-Filter :param :Cutoff 0.0]]
                                       3 [[0 :Mini-Filter :param :Cutoff 0.2]]
                                       })

(ctrl/mix :IO :Mini-Filter 0)
(ctrl/mix :Mini-Filter :IO 0)

(ctrl/mix :Basic :IO -10 5)



(go
  (<! (ctrl/reset-device :Basic))
  (<! (px/request-params PARAMS :Basic)))

;; Oscillators: shapes
(px/get-matching PARAMS :Basic #"^Osc.*Shap$")
;; Envelopes:
(px/get-matching PARAMS :Basic #"Tm$")
;; Filters:
(px/get-matching PARAMS :Basic #"Flt[12]Frq")
;; Env sensitivity / velocity sensing:
(px/get-matching-to-dict PARAMS :Basic #"(Env|Vel)$")


(->> (seq (get-in (deref PARAMS) [:Axon :params]))
     (filter (fn [[p [v & _]]] (= v 183))))

(px/xmit-some-params-now :Basic [:AmpRlsTm 0.1])
(px/xmit-some-params-now :Basic [:Flt1Frq 0.4])
(px/xmit-some-params-now :Basic [:Flt2Frq 0.3])
(px/xmit-some-params-now :Basic [:Osc3Tune 1])
(px/xmit-some-params-now :Basic [:Flt1Vel 0.8])
(px/xmit-some-params-now :Basic [:Flt2Vel 0.8])

(px/xmit-some-params-now :Basic [:Osc1Shap :Triangle])
(px/xmit-some-params-now :Basic [:Osc3Shap :Triangle])
;; (Oscillator freqs: 0/0.5/1)

(swap! SEQ assoc-in [:sequences :main] {1 [[0 :Basic :note (+ 36 2) 70 50]
                                           [0.25 :Basic :note (+ 36 2) 80 50]
                                           [0.75 :Basic :note (+ 36 2) 20 200]
                                           ]
                                        2 [[0 :Basic :note (+ 48 2) 60 70]
                                           [0.5 :Basic :note (+ 36 2) 40 100]]
                                        3 [[0 :Basic :note (+ 36 2) 20 100]
                                           [0.75 :Basic :note (+ 36 2) 40 100]]
                                        4 [[0 :Basic :note (+ 24 2) 90 50]
                                           [0.75 :Basic :note (+ 36 2) 40 100]]})

(swap! SEQ assoc-in [:sequences :FFF] {1 [[0 :Mini-Filter :param :Cutoff 0.2]]
                                       2 [[0 :Mini-Filter :param :Cutoff 0.9]
                                          [0.5 :Mini-Filter :param :Cutoff 0.1]]
                                       3 [[0 :Mini-Filter :param :Cutoff 0.2]]
                                       4 [[0 :Mini-Filter :param :Cutoff 0.3]]})

(px/get-matching PARAMS :Mini-Filter #"Output")
(px/xmit-some-params-now :Mini-Filter [:Output_Volume 0.8])

;; HACK: into Enso
(ctrl/mix :Basic :Enso -10)
(ctrl/mix :Enso :IO 0 10)


;; After a bit: Basic into :Mini-Filter
(ctrl/mix :Basic :Mini-Filter -40)


(ctrl/mute-all 10)

;; TEST

(ctrl/mix :IO :Replika_XT -6)
(ctrl/mix :Replika_XT :IO -6)

(ctrl/mix :Basic :IO -40 10)

;; ----- RALF -----
;; Mix: low synth
(ctrl/mute-all)
(ctrl/mix :Basic :IO -20)

(ctrl/window :Mini-Filter 1)
(ctrl/window :Replika_XT 1)

;; Sitar -> Replika
(ctrl/mix :IO :Replika_XT 0)
;; Replika -> Mini-Filter
(ctrl/mix :Replika_XT :Mini-Filter 0)
;; Mini-Filter -> Out
(ctrl/mix :Mini-Filter :IO 6)

;; Set up Mini-Filter
(go (<! (ctrl/reset-device :Mini-Filter))
    (<! (px/request-params PARAMS :Mini-Filter)))

;; Filter setup
(px/xmit-some-params-now :Mini-Filter [:Resonance 0.8])

;;

;; Set up Replika
(go
  ;; RESET
  (<! (ctrl/reset-device :Replika_XT))
  (<! (px/request-params PARAMS :Replika_XT))
  (<! (px/xmit-some-params-now :Replika_XT [:Modulation_Mode :Pitch_Shifter]))
  (<! (px/request-params PARAMS :Replika_XT))
  ;; CONFIGURE
  (<! (px/xmit-some-params-now :Replika_XT
                               [:PS_Shift_L :+12]
                               [:PS_Shift_R :+12]
                               [:Mix 1]
                               [:PS_Mix 1]
                               [:Ping_Pong 0]
                               [:Time_Mode :Milliseconds]
                               [:Delay_Time 0])))

(px/xmit-some-params-now :Replika_XT
                         [:Modulation_Mode :Pitch_Shifter]
                         [:Delay_Mode :Diffusion])

(px/xmit-some-params-now :Replika_XT [:Amount 0.18])

(ctrl/mix :* :* -40)
(seq? [1 2 3])
(seqable? :X )
(ctrl/mix :IO [:IO :Basic] 0 )

(go (println (<! (async/timeout 1000))))


;; -----

(ctrl/window :Basic 1)
(ctrl/window :Axon 1)

(defn notes-on [octave]
  (map (fn [s] (goog.string/format "%s%d" s octave))
       ["C" "C#" "D" "D#" "E" "F" "F#" "G" "G#" "A" "A#" "B"]))




;;def named-notes-for-axon
(->> (map notes-on (range -2 7))
     flatten
     (take (+ (* 8 12) 5))
     (map keyword))

named-notes-for-axon

(notes-on 0)

(range -2 7)

;; C-2 .. E6 incl -> 9*12 + 5



(let [notes-on
      (fn [octave]
        (map (fn [s] (goog.string/format "%s%d" s octave))
             ["C" "C#" "D" "D#" "E" "F" "F#" "G" "G#" "A" "A#" "B"]))

      named-notes (->> (map notes-on (range -2 7))
                       flatten
                       (take (+ (* 8 12) 5))
                       (map keyword))]

  (->> (map (fn [i] [(gstring/format  "V%d_Pitch" i) named-notes]) (range 7))
       (into {}))
  )
