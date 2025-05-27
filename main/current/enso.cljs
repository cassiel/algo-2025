(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as state]
            [net.cassiel.algo-2025.devices :as dev]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.tools :as t]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async.interop :refer [<p!]]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

(do
  (def CLEAR-LOOP :C-2)
  (def RECORD :C#-2)
  (def OVERDUB :D-2)
  (def PLAY :D#-2)
  (def STOP :E-2))

(go (<! (ctrl/read :Enso.A "BaseEnso")))
(go (<! (ctrl/read :Enso.B "BaseEnso")))

(-> dev/param-enums :Enso.A keys)       ; TODO get this into dictionary (and enum values)
(-> dev/param-enums :Enso.A :Mode)
(-> dev/param-enums :Enso.A :Mode_Quantize)
(-> dev/param-enums :Enso.A :Play_Speed)



(ctrl/window :Enso.A 1)

(ctrl/mix-paths [:Microtonic :Enso.A :IO]
                [:Microtonic :IO])

(ctrl/mix-paths [:Microtonic :Enso.A]
                )

(ctrl/mix-paths [:IO :Enso.A :IO]
                #_ [:IO :Enso.B :IO]
                )

(ctrl/mix-path :IO :Enso.A :Discord4 :IO)
(ctrl/mix-path :IO :IO)

;; TODO: make this return a channel.

(doseq [enso [:Enso.A :Enso.B]]
  (px/xmit-some-params-now enso
                           [:Link_Speeds :Off]
                           [:Input_Level 1]
                           [:Play_Speed :+1.0]
                           [:Rec_Speed :-2.0]
                           [:Dry_Level 0]
                           [:Dub_In_Place 1]
                           [:Feedback 0.5]))

(px/xmit-some-params-now :Enso.A
                         [:Play_Speed :+1.0]
                         [:Rec_Speed :-1.0]
                         [:Saturation 1]
                         )

(px/xmit-some-params-now :Enso.B
                         [:Saturation 0.5]
                         )

(px/xmit-some-params-now :Enso.B
                         [:Link_Speeds :Off]
                         [:Input_Level 1]
                         [:Play_Speed :+1.0]
                         [:Rec_Speed :-0.5]
                         [:Dry_Level 0]
                         [:Dub_In_Place 0]
                         [:Feedback 0.5])


;; 4.1 Reset and 4.5 prime record; next 4.5 prime overdub.

(let [uuid (t/uuid)
      enso :Enso.B]
  (swap! state/SEQ assoc-in [:sequences uuid]
         {4 [[0.1 enso :note CLEAR-LOOP 64 100]
             [0.5 enso :note RECORD 64 100]
             (fn [seq] (assoc seq uuid {4 [[0.5 enso :note OVERDUB 64 100]
                                           (fn [seq] (dissoc seq uuid))]}))]}))

(let [uuid (t/uuid)
      enso :Enso.A]
  (swap! state/SEQ assoc-in [:sequences uuid] {1 [(cons 0 (px/param-packet enso :Play_Speed :-0.5))
                                                  (fn [seq] (dissoc seq uuid))]}))


(let [uuid (t/uuid)
      enso :Enso.B]
  (swap! state/SEQ assoc-in [:sequences uuid] {1 [(cons 0 (px/param-packet enso :Play_Speed :+1.0))
                                                  (fn [seq] (dissoc seq uuid))]}))


(let [uuid (t/uuid)
      enso :Enso.A]
  (swap! state/SEQ assoc-in [:sequences uuid] {1 [[0.1 enso :note OVERDUB 64 100]
                                                  (fn [seq] (dissoc seq uuid))]}))

(px/get-matching-to-dict state/PARAMS :Enso.A #"Level|Dub")
(px/get-matching-to-dict state/PARAMS :Enso.A #"Quant|Unit")
(px/get-matching-to-dict state/PARAMS :Enso.A #"Satur|Chor")
(px/xmit-some-params-now :Enso.A [:Saturation 0.5])

(dev/get-dev-enums-to-dict :Enso.A)

;; ---
(px/xmit-some-params-now :Enso.A
                         [:Mode_Quantize :Free])

(px/xmit-some-params-now :Enso.A
                         [:Saturation 0.5]
                         [:Chorus_Depth 1]
                         [:Chorus_Rate 0.1])



;; ---

(ctrl/master -3 10)

(px/xmit-some-params-now :Enso.A [:Dub_In_Place 0])
(px/xmit-some-params-now :Enso.A [:Dub_In_Place 1])

(ctrl/mix-paths [:Microtonic :Enso.A :IO]
                [:Microtonic :Enso.B :IO]
                #_ [:Microtonic :IO])

;; TODO should mix return a channel?

(let [uuid (t/uuid)
      enso :Enso.A]
  (swap! state/SEQ assoc-in [:sequences uuid] {1 [[0.1 enso :note OVERDUB 64 100]
                                                  (fn [seq] (dissoc seq uuid))]}))
