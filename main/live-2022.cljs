(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.khyal-live.core :as c]
            [net.cassiel.khyal-live.params :as px]
            [net.cassiel.khyal-live.sequencing :as seq]
            [net.cassiel.khyal-live.control :as ctrl]
            [net.cassiel.khyal-live.conformer :as cx]
            [cljs-promises.core :as p]
            [cljs-promises.async :as a :refer-macros [<?]]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [clojure.spec.alpha :as s]
            [spectacles.lenses :as lens]
            [goog.string :as gstring]
            [goog.string.format]))

(def SEQ (atom {:sequences {} :messages nil}))
#_ (reset! SEQ {:sequences {} :messages nil})

(def PARAMS (atom {}))

;; Messages out to Max:
;; "win" [name] [1/0]: open or close named window (audio, basic, enso)
;; "now" [...m...]: output message
;; "seq" "add" "main" [pos] [...m...]: schedule message
;; "mix" "set" [x] [y] [db] [t?]: mixet setting
;; "master" [db] [t?]

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

;; Generic handler:

(ctrl/handle :request
             (fn [pos]
               (let [{:keys [messages]} (swap! SEQ seq/process-request pos)]
                 (doseq [x messages]
                   (apply c/xmit :seq :add :main x))))

             :pname
             (fn [& args] (apply px/pname-in PARAMS args))

             :pvalue
             (fn [& args] (apply px/pvalue-in PARAMS args)))

;; ----- Everybody out of the car -----
#_ (ctrl/unload-all [:Basic :Enso :Filter_MINI :Replika_XT])

;; ----- SETUP -----

(ctrl/mute-all)

(do (ctrl/reset-device :Replika_XT)
    (ctrl/reset-device :Enso)
    (ctrl/reset-device :Basic)
    (ctrl/reset-device :Filter_MINI)
    (ctrl/reset-device :Axon))

(go
  (<! (px/request-params PARAMS :Basic))
  (<! (px/request-params PARAMS :Enso))
  (<! (px/request-params PARAMS :Replika_XT))
  (<! (px/request-params PARAMS :Filter_MINI))
  (<! (px/request-params PARAMS :Axon)))

(px/get-matching PARAMS :Axon #"V[0-6]_Pitch")
(px/get-matching PARAMS :Axon #"Clock")


;; Dry foldback:
(do
  (ctrl/mute-all)
  (ctrl/mix :Enso :* -40)
  (ctrl/mix :IO :IO 0 5)
  (ctrl/master 0 5))

;; (ctrl/mix :IO :IO 0 5)

;; ----- (PREP: DRY) -----
(ctrl/window :Enso)

(go
  ;; RESET
  #_ (<! (ctrl/reset-device :Enso))
  (<! (px/request-params PARAMS :Enso))
  ;; CONFIGURE
  (<! (px/xmit-some-params-now :Enso
                               [:Link_Speeds :Off]
                               [:Play_Speed :-1.0]
                               [:Rec_Speed :+1.0]
                               [:Dry_Level 0]
                               [:Feedback 0])))

(px/get-matching PARAMS :Enso #"Speed")

;; Two bar loop (punch on "3"):
(px/xmit-some-params-now :Enso [:Mode :Record])
(px/xmit-some-params-now :Enso [:Mode :Overdub])

;; ----- *TAPE* -----
;; Fade in Enso
(do
  (ctrl/mix :Enso :Enso -40)
  (ctrl/mix :IO :Enso 0 10)
  (ctrl/mix :Enso :IO 0 10))

;; ----- +SPACE -----
(px/xmit-some-params-now :Enso
                         [:Play_Speed :-1.0]
                         [:Rec_Speed :+0.5])

;; ----- +WHALE (only once) -----
(px/xmit-some-params-now :Enso
                         [:Play_Speed :-1.0]
                         [:Rec_Speed :+2.0])

;; ----- +NORMAL -----
(px/xmit-some-params-now :Enso
                         [:Play_Speed :-1.0]
                         [:Rec_Speed :+1.0])

;; ----- FEEDBACK -----  6:30
;; Add looper and matrix feedback / end on SPACE?
(px/xmit-some-params-now :Enso [:Feedback 0.5])
(ctrl/mix :Enso :Enso -15 5)

;; ----- (REPLIKA PREP) -----
;; Replika for Diffusion, but pre-cue pitch shift:
(ctrl/window :Replika_XT)


(go
  ;; RESET
  #_ (<! (ctrl/reset-device :Replika_XT))
  (<! (px/request-params PARAMS :Replika_XT))
  (<! (px/xmit-some-params-now :Replika_XT
                               [:Modulation_Mode :Pitch_Shifter]
                               [:Delay_Mode :Diffusion]))
  (<! (px/request-params PARAMS :Replika_XT))

  ;; CONFIGURE
  (<! (px/xmit-some-params-now :Replika_XT
                               [:Size 0.2] ; (Diffusion, size small)
                               [:Amount 0.2]
                               [:PS_Mix 0] ; No pitch (yet)
                               [:Delay_Time 0]
                               [:Mix 1])))

;; ----- DIFFUSE -----
(do (ctrl/mix :Enso :Replika_XT 0 5)
    (ctrl/mix :Replika_XT :IO 0 5))

;; ----- *ELIZABETHAN* ----- 7:30
;; ----- WRENCH -----
;; Pitch-shift in, diffusion out:
(go
  ;; CONFIGURE
  (<! (px/xmit-some-params-now :Replika_XT
                               [:PS_Shift_L :+7]
                               [:PS_Shift_R :-12]
                               [:Time_Mode :Dotted]
                               [:Delay_Time 0.4] ; dotted 1/8? TODO symbolic form?
                               [:Feedback 0.0]
                               [:Ping_Pong 0]
                               [:Amount 0] ; (Diffusion)
                               [:Size 0.5]
                               [:PS_Mix 1])))

;; ----- REPLIKA STRAIGHT... -----
(do
  (ctrl/mix :IO :IO +3 10)
  (ctrl/mix :IO :Replika_XT -6 10)
  (ctrl/mix :Replika_XT :IO -3 10))

;; ----- ...ENSO OUT -----
(do
  (px/xmit-some-params-now :Enso [:Feedback 0])
  (ctrl/mix :* :Enso -40 10)
  (ctrl/mix :Enso :* -40 10))

;; ----- (SETUP BASS SYNTH) ----
(px/xmit-some-params-now :Basic
                         [:AmpRlsTm 0.1]
                         [:Flt1Frq 0.4]
                         [:Flt2Frq 0.3]
                         [:Osc3Tune 1]
                         [:Flt1Vel 0.8]
                         [:Flt2Vel 0.8])

;; ----- MERMAID -----

(ctrl/mix :Replika_XT :IO -10 3)        ; Duck
(px/xmit-some-params-now :Replika_XT
                         [:Amount 0.18]         ; Bringing in Diffusion
                         [:Feedback 0.25]       ; PS FB
                         [:Time_Mode :Dotted]
                         [:Delay_Time 0.4]
                         [:PS_Shift_L :+7]
                         [:PS_Shift_R :+7]
                         [:PS_Mix 1])
(ctrl/mix :Replika_XT :IO 6 3)          ; Back

#_ (ctrl/window :Replika_XT 1)

;; Listen for E (5th on A):
;; E A C
(do
  (swap! SEQ assoc-in [:sequences :main] {1 [[0 :Basic :note :A0 70 50]]})
  (px/xmit-some-params-now :Replika_XT
                           [:Feedback 0]
                           [:Delay_Time 0]
                           [:PS_Shift_L :-4]
                           [:PS_Shift_R :-7])
  (px/axon-pitch-set :E4 :A3 :C3 :E2 :A3 :C3 :E4))

;; D F# A C
(do
  (swap! SEQ assoc-in [:sequences :main] {1 [[0 :Basic :note :D0 70 50]]})
  (px/xmit-some-params-now :Replika_XT
                             [:Feedback 0]
                             [:Delay_Time 0]
                             [:PS_Shift_L :+4]
                             [:PS_Shift_R :-2])
  (px/axon-pitch-set :D4 :F#4 :A2 :C4 :D2 :F#3 :A4))

;; F A B C
(do
  (swap! SEQ assoc-in [:sequences :main] {1 [[0 :Basic :note :F0 70 50]]})
  (px/xmit-some-params-now :Replika_XT
                           [:Feedback 0]
                           [:Delay_Time 0]
                           [:PS_Shift_L :+4]
                           [:PS_Shift_R :+6])
  (px/axon-pitch-set :F4 :A4 :B2 :C4 :F2 :A3 :B4))

;; *** NEW: Axon control:

;; pitch-shift off - holding in F
;; Also: snag the repeat time in advance
;; back to Mermaid (?), and:
(px/xmit-some-params-now :Replika_XT
                         [:PS_Mix 0]
                         [:Time_Mode :Straight]
                         [:Delay_Time 0])

(go
  (<! (px/xmit-program :Axon 17))
  ;; Force clock sync to nearest 1/8 * 1/2:
  (<! (px/xmit-some-params-now :Axon [:ClockRat :8])))

(ctrl/mix :Basic :IO 0 10)
(ctrl/mix :Axon :IO -6 10)

;; END

(ctrl/window :Axon)
(ctrl/window :Replika_XT)


;; Before RALF:

(do
  (ctrl/mix :Axon :IO -40 10)
  (ctrl/mix :Basic :IO -40 10))

;; TODO: rhythmic component - sub-bass - not tonal
;; TODO: need master volume control

;; ----- RALF -----
;; ----- +12/DIFFUSION TRANSITION -----

(ctrl/mix :IO :IO -6 10)

(go
  ;; RESET
  #_ (<! (ctrl/reset-device :Replika_XT))
  #_ (<! (px/request-params PARAMS :Replika_XT))
  #_ (<! (px/xmit-some-params-now :Replika_XT [:Modulation_Mode :Pitch_Shifter]))
  #_ (<! (px/request-params PARAMS :Replika_XT))
  ;; CONFIGURE [XX1]
  (<! (px/xmit-some-params-now :Replika_XT
                               [:PS_Shift_L :+12]
                               [:PS_Shift_R :+12]
                               [:Mix 1]
                               [:PS_Mix 1]
                               [:Ping_Pong 0]
                               [:Time_Mode :Milliseconds]
                               [:Delay_Time 0])))

;; ----- (PREP: START FILTER SEQ) -----
;; #1
(swap! SEQ assoc-in [:sequences :mf] {1 [[0 :Filter_MINI :param :Cutoff 0.4]]
                                      2 [[0 :Filter_MINI :param :Cutoff 0.6]
                                         [0.5 :Filter_MINI :param :Cutoff 0.7]]
                                      3 [[0 :Filter_MINI :param :Cutoff 0.0]]
                                      4 [[0 :Filter_MINI :param :Cutoff 0.5]
                                         [0.5 :Filter_MINI :param :Cutoff 0.8]]})

;; #2
(swap! SEQ assoc-in [:sequences :mf] {1 [[0 :Filter_MINI :param :Cutoff 0.3]]
                                      2 [[0 :Filter_MINI :param :Cutoff 0.7]
                                         [0.5 :Filter_MINI :param :Cutoff 0.5]]
                                      3 [[0 :Filter_MINI :param :Cutoff 0.0]]
                                      4 [[0 :Filter_MINI :param :Cutoff 0.45]]})


;; ----- XOVER MINI FILTER -----
(swap! SEQ assoc-in [:sequences :main] {1 [[0 :Basic :note :D1 70 50]]})
(ctrl/mix :Basic :IO 0 10)
(ctrl/mix :IO :IO 0 10)

(do
  (ctrl/mix :Replika_XT :IO -40 10)
  (ctrl/mix :IO :Replika_XT 3 10)
  (ctrl/mix :Replika_XT :Filter_MINI 0 10)
  (ctrl/mix :Filter_MINI :IO 6 10))

(swap! SEQ assoc-in [:sequences :main] {1 [[0 :Basic :note :D1 80 50]]
                                        2 [[0.5 :Basic :note :D2 70 50]]
                                        3 [[0.5 :Basic :note :D0 70 50]]
                                        4 [[0 :Basic :note :D2 70 50]]})

(px/xmit-some-params-now :Filter_MINI [:Resonance 0.6])

;; ----- SYNTH START -----
(px/xmit-some-params-now :Basic
                         [:AmpRlsTm 0.1]
                         [:Flt1Frq 0.4]
                         [:Flt2Frq 0.3]
                         [:Osc3Tune 1]
                         [:Flt1Vel 0.8]
                         [:Flt2Vel 0.8])

(ctrl/window :Filter_MINI)

#_ (ctrl/mix :Basic :IO -40 0)

(px/xmit-some-params-now :Basic [:Osc1Shap :DigiGrit])
(px/xmit-some-params-now :Basic [:Osc3Shap :Triangle])

;; ----- SYNTH -> FILTER -----
(ctrl/mix :Basic :Filter_MINI -6 5)

;; ----- FRANKE -----

;; ----- (PREP: ENSO RESET AND PRIME) -----
;; DANGER WILL ROBINSON
(go
  (<! (ctrl/reset-device :Enso))
  (<! (px/request-params PARAMS :Enso))
  (<! (px/xmit-some-params-now :Enso
                               [:Link_Speeds :Off]
                               [:Play_Speed :+2.0]
                               [:Rec_Speed :-1.0]
                               [:Dry_Level 0]
                               [:Feedback 0])))

(ctrl/window :Enso)
(px/xmit-some-params-now :Enso [:Mode :Record])
(px/xmit-some-params-now :Enso [:Mode :Overdub])

;; ----- ENSO FOR SYNTH -----
(do
  (ctrl/mix :Basic :Enso 0 5)
  (ctrl/mix :Enso :IO -15 5))

;; ----- *LIGETI* -----
;; ----- ENDGAME -----
;; Left with +12/+12 Replika
;; Rhythm fades out as we go into Ligeti

(do
  (ctrl/mix :Basic :* -40 10)
  (ctrl/mix :* :Enso -40 10)
  (ctrl/mix :Enso :* -40 10)

  (ctrl/mix :* :Filter_MINI -40 10)
  (ctrl/mix :Filter_MINI :* -40 10)

  (ctrl/mix :IO :IO -15 10)             ; Dry down

  (ctrl/mix :IO :Replika_XT 3 10)
  (ctrl/mix :Replika_XT :IO 3 10))

;; ----- SUDDEN LIGETI FX (Held bow) -----
(ctrl/window :Enso)
(ctrl/window :Replika_XT)
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

  ;; NOTE Go back to 12/12 first. ***** [XX1] *****

  (<! (px/xmit-some-params-now :Replika_XT
                               [:PS_Shift_L :+7]
                               [:PS_Shift_R :-12]
                               [:PS_Mix 0.5]
                               [:Size 1]
                               [:Mix 1]
                               [:Time_Mode :Straight]
                               [:Ping_Pong 0] ; IMPORTANT: casc. 5ths and low +ves.
                               [:Delay_Time 0.3]
                               [:Amount 1]
                               [:Feedback 0])))

#_ (ctrl/window :Replika_XT 1)

;; ----- (PREP: REBOOT ENSO, AGAIN) -----
(go
  ;; RESET
  (do (<! (ctrl/reset-device :Enso))
      (<! (px/request-params PARAMS :Enso)))

  ;; CONFIGURE (c/w Replika delay)
  (do
    (px/xmit-some-params-now :Replika_XT
                             [:Delay_Time 0.5]
                             [:Feedback 0.4])

    (<! (px/xmit-some-params-now :Enso
                                 [:Link_Speeds :Off]
                                 [:Play_Speed :+1.0]
                                 [:Rec_Speed :-0.5]
                                 [:Dry_Level 0]
                                 [:Feedback 0.7]))))

;; ----- ENSO IN -----

(px/xmit-some-params-now :Enso
                         [:Link_Speeds :Off]
                         [:Play_Speed :+1.0]
                         [:Rec_Speed :-0.5]
                         [:Dry_Level 0]
                         [:Feedback 0.7])

(do
  (ctrl/mix :IO :Replika_XT 0 10)
  (ctrl/mix :IO :Enso 6 10)
  (ctrl/mix :Enso :Replika_XT -6 10))

;; 4 bars
(ctrl/window :Enso)
(px/xmit-some-params-now :Enso [:Mode :Record])
(px/xmit-some-params-now :Enso [:Mode :Overdub])


;; ----- FIDDLE THE PITCHES -----
(ctrl/mix :IO :IO -10 5)
(px/xmit-some-params-now :Replika_XT [:PS_Shift_L :+6])
(px/xmit-some-params-now :Replika_XT [:PS_Shift_L :+7])

;; ----- MORE DRY SIGNAL -----
ctrl/mix (:IO :IO 3 10)

;; ----- WRAP: EMPTY BUFFER -----
(px/xmit-some-params-now :Enso [:Feedback 0])

;; ----- MUTE -----
(ctrl/mute-all 5)
(ctrl/unload-all [:Basic :Enso :Filter_MINI :Replika_XT])
