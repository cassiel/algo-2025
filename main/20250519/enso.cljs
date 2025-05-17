(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as state]
            [net.cassiel.algo-2025.devices :as dev]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async.interop :refer [<p!]]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

(-> dev/param-enums :Enso.A keys)       ; TODO get this into dictionary (and enum values)
(-> dev/param-enums :Enso.A :Mode)
(-> dev/param-enums :Enso.A :Mode_Quantize)
(-> dev/param-enums :Enso.A :Play_Speed)

(do
  (def CLEAR-LOOP :C-2)
  (def RECORD :C#-2)
  (def OVERDUB :D-2)
  (def PLAY :D#-2)
  (def STOP :E-2))

(go (<! (ctrl/read :Enso.A "BaseEnso")))
(go (<! (ctrl/read :Enso.B "BaseEnso")))

(ctrl/window :Enso.B 1)
(ctrl/read :Enso.A "BaseEnso")

(ctrl/mix-paths [:Microtonic :Enso.A :IO]
                [:Microtonic :IO])

(ctrl/mix-paths [:Axon_2 :Enso.A :IO]
                [:Axon_2 :IO])

(ctrl/mix-path :IO :Enso.A :Discord4 :IO)

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
                         [:Link_Speeds :Off]
                         [:Input_Level 1]
                         [:Play_Speed :+1.0]
                         [:Rec_Speed :-0.5]
                         [:Dry_Level 0]
                         [:Dub_In_Place 0]
                         [:Feedback 0.5])


;; 4.1 Reset and 4.5 prime record; next 4.5 prime overdub.

(swap! state/SEQ assoc-in [:sequences :_ENSO_] {4 [[0.1 :Enso.A :note CLEAR-LOOP 64 100]
                                                   [0.5 :Enso.A :note RECORD 64 100]
                                                   (fn [seq] (assoc seq :_ENSO_ {4 [[0.5 :Enso.A :note OVERDUB 64 100]
                                                                                    (fn [seq] (dissoc seq :_ENSO_))]}))]})

(swap! state/SEQ assoc-in [:sequences :_ENSO_] {4 [[0.1 :Enso.B :note CLEAR-LOOP 64 100]
                                                   [0.5 :Enso.B :note RECORD 64 100]
                                                   (fn [seq] (assoc seq :_ENSO_ {4 [[0.5 :Enso.B :note OVERDUB 64 100]
                                                                                    (fn [seq] (dissoc seq :_ENSO_))]}))]})

(swap! state/SEQ assoc-in [:sequences :_ENSO_] {1 [(cons 0 (px/param-packet :Enso.A :Play_Speed :-1.0))
                                                   (fn [seq] (dissoc seq :_ENSO_))]})

(swap! state/SEQ assoc-in [:sequences :_ENSO_] {1 [(cons 0 (px/param-packet :Enso.B :Play_Speed :+2.0))
                                                   (fn [seq] (dissoc seq :_ENSO_))]})


(swap! state/SEQ assoc-in [:sequences :_ENSO_] {4 [[0.1 :Enso.A :note CLEAR-LOOP 64 100]]})

(px/get-matching-to-dict state/PARAMS :Enso.A #"Level|Dub")
(px/get-matching-to-dict state/PARAMS :Enso.A #"Quant|Unit")
(px/get-matching-to-dict state/PARAMS :Enso.A #"Satur|Chor")


;; TODO: just mess around with record/playback speed
(px/xmit-some-params-now :Enso.A
                         [:Rec_Speed :+1.0]
                         [:Play_Speed :-1.0])

(px/xmit-some-params-now :Enso.A
                         [:Saturation 0.9]
                         [:Chorus_Depth 0.9])

#_ (go
  (<! (ctrl/makenote :Enso.A (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                       :Overdub)))

  (<! (ctrl/makenote :Enso.B (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                       :Overdub))))

;; ---
(px/xmit-some-params-now :Enso.A
                         [:Mode_Quantize :Free])
(px/xmit-some-params-now :Enso.A
                         [:Saturation 1])

(ctrl/makenote :Enso.A (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                 :Record))

;; ---

(px/xmit-some-params-now :Enso.A [:Dub_In_Place 0])
(px/xmit-some-params-now :Enso.A [:Dub_In_Place 1])


(ctrl/mix :IO :Enso.B 0 10)

;; TODO should mix return a channel?
(go
  (ctrl/mix :* :* -40 5)
  (ctrl/mix :IO :Enso.A 0 5)
  (ctrl/mix :IO :Enso.B 0 5)
  (ctrl/mix :Enso.A :IO -10 5)
  (ctrl/mix :Enso.B :IO -10 5)
  )


(do
  (ctrl/mix :IO :Enso.A 0 10)
  (ctrl/mix :Enso.A :ODS.A 0 10)
  (ctrl/mix :ODS.A :IO -10 10))



(<! (ctrl/mix :Enso.B :IO 0 10))

(ctrl/mix :Enso.A :IO -40 5)
(ctrl/mix :Enso.B :IO 0 5)
(ctrl/mix :Enso.B :ODS.B 0 5)

(ctrl/mix :Enso.A :Replika_XT -40 10)
(ctrl/mix :Enso.A :IO -10 10)
(ctrl/mix :Enso.A :ODS.B -40 10)

(ctrl/mix :* :* -40 5)
