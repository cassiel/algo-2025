(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as s]
            [net.cassiel.algo-2025.devices :as dev]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.tools :as t]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

;; SCENE 0 (setup.cljs):
;; - Handlers
;; - Load VSTs, enable reflection
;; - Start DSP and transport

;; ----- SCENE 1: PULSE

(reset! state/SEQ {:sequences {} :messages nil})
(ctrl/mix-paths)

;; TODO: conformer is on wrong side of mutator.

(->> (reset! state/SEQ {:sequences {:main {1 [[0 :Microtonic :note :C#1 64 100]]
                                           2 [[0.5 :Microtonic :note :C#1 64 100]]}}
                        :messages  nil})
     (cx/conformer ::seq/sequencer-state))

(ctrl/mix-paths [:IO :IO]
                [-15 :Microtonic :IO])

;; ----- SCENE 2: SITAR -> ENSO
;; Microtonic dry
;; - Incorporate Enso.A (idle, 100% wet, so no passthrough)

;; Enso base state:

(go (<! (ctrl/read :Enso.A "BaseEnso")))

;; Punch in Enso.A, one bar:
;; 4.1 Reset and 4.5 prime record; next 4.5 prime overdub.

(defn enso-prime [enso]
  (let [uuid (t/kw-uuid)]
    (swap! state/SEQ assoc-in [:sequences uuid]
           {4 [[0.1 enso :note dev/CLEAR-LOOP 64 100]
               [0.5 enso :note dev/RECORD 64 100]
               (fn [seq] (assoc seq uuid {4 [[0.5 enso :note dev/OVERDUB 64 100]
                                             (fn [seq] (dissoc seq uuid))]}))]})))

;; ACTION:
(enso-prime :Enso.A)

(ctrl/mix-paths [:IO :IO]
                [-5 :IO :Enso.A :IO]
                [-15 :Microtonic :IO])

(ctrl/window :Microtonic 1)
(ctrl/window :Enso.A 1)
(ctrl/window :Enso.B 1)
(ctrl/window :Replika 1)

;; ----- SCENE 3: more beats (gradual):

(->> (reset! state/SEQ {:sequences (-> {:A {1 [[0 :Microtonic :note :C#1 64 100]
                                               [0.5 :Microtonic :note :C#1 64 100]]
                                            }
                                        :B {1 [ [0.5 :Microtonic :note :F1 64 100]]
                                            2 [[0.25 :Microtonic :note :F1 64 100]]
                                            3 [[0 :Microtonic :note :C1 64 100]]
                                            4 [[0.5 :Microtonic :note :F1 64 100]
                                               [0.5 :Microtonic :note :C1 64 100]]}
                                        :C {2 [[0.75 :Microtonic :note :F1 64 100]]
                                            3 [[0.5 :Microtonic :note :F1 64 100]]
                                            4 [[0.5 :Microtonic :note :F1 64 100]]}}
                                       #_ (dissoc :A)
                                       #_ (dissoc :B)
                                       #_ (dissoc :C))
                        :messages  nil})
     (cx/conformer ::seq/sequencer-state))

;; (ctrl/write :Microtonic)

;; DANGER WILL ROBINSON - Don't use whilst Enso is live - not quantized.

(comment (doseq [enso [:Enso.A]]
           (px/xmit-some-params-now enso
                                    [:Link_Speeds :Off]
                                    [:Input_Level 1]
                                    [:Play_Speed :+1.0]
                                    [:Rec_Speed :-2.0]
                                    [:Dry_Level 0]
                                    [:Dub_In_Place 1]
                                    [:Feedback 0.5])))

;; Quantised (speed) change - but little error chacking.

;; SCRATCH: Microtonic into Enso.A for testing:

(ctrl/mix-paths [:Microtonic :IO]
                [:Microtonic :Enso.A :IO])

;; ----- SCENE 4: Looper speed (etc.):

(px/get-matching-to-dict state/PARAMS :Enso.A #"Sat")

(let [uuid (t/kw-uuid)
      enso :Enso.A]
  (swap! state/SEQ assoc-in [:sequences uuid]
         {1 [(cons 0 (px/param-packet enso :Rec_Speed :+1.0))
             (cons 0 (px/param-packet enso :Play_Speed :-0.5))
             (fn [seq] (assoc seq uuid {1 [(fn [seq] (dissoc seq uuid))]}))]}))

;; FREEZE:

(let [uuid (t/kw-uuid)
      enso :Enso.A]
  (swap! state/SEQ assoc-in [:sequences uuid]
         {1 [[0 enso :note dev/PLAY 64 100]
             (cons 0 (px/param-packet enso :Saturation 1.0))
             (fn [seq] (dissoc seq uuid))]
          }))

;; OVERDUB!

(let [uuid (t/kw-uuid)
      enso :Enso.A]
  (swap! state/SEQ assoc-in [:sequences uuid]
         {1 [[0 enso :note dev/OVERDUB 64 100]
             (fn [seq] (dissoc seq uuid))]}))

;; ----- SCENE 5: SECOND LOOPER

(ctrl/mix-paths [:IO :IO]
                [-6 :IO :Enso.A :IO]
                [:IO :Enso.B :IO]
                [:Microtonic :Enso.B] ;; -6dB !!!!!!!
                [-20 :Microtonic :IO])

(enso-prime :Enso.B)

(let [uuid (t/kw-uuid)
      enso :Enso.B]
  (swap! state/SEQ assoc-in [:sequences uuid]
         {1 [(cons 0 (px/param-packet enso :Rec_Speed :+1.0))
             (cons 0 (px/param-packet enso :Play_Speed :+0.5))
             (fn [seq] (assoc seq uuid {1 [(fn [seq] (dissoc seq uuid))]}))]}))

;; ----- SCENE 6: REPLIKA

(ctrl/window :Replika_XT)
(ctrl/mix-path -6 :Microtonic :Replika :IO)

(px/get-matching-to-dict state/PARAMS :Replika #"Mode")
(dev/get-dev-enums-to-dict :Replika)

(px/xmit-some-params-now :Replika
                         [:Time_Mode :Milliseconds]
                         [:Delay_Time 0.01]
                         [:Feedback 0.25] ; -> 0.75
                         [:Mode :Diffusion]
                         [:Modulation :Phaser] ; :Phaser
                         [:Mix 0.75]
                         [:Stereo_Mode :Ping_Pong]
                         )

(ctrl/mix-paths [-40 :Enso.A :IO]
                [:IO :IO]
                #_ [-10 :Microtonic :Replika :IO]
                [:IO :Replika :IO]
                #_ [:IO :Replika :IO]
                #_ [-6 :Enso.A :Replika :IO])

;; ----- FIN

(ctrl/mix-paths)
