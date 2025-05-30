(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as s]
            [net.cassiel.algo-2025.devices :as dev]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async.interop :refer [<p!]]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

;; Preset state:
(go (<! (ctrl/restore :Enso.A 0))
    (<! (ctrl/restore :Enso.B 0)))

(-> dev/param-enums :Enso.A keys)
(-> dev/param-enums :Enso.A :Mode)
(-> dev/param-enums :Enso.A :Mode_Quantize)

(px/xmit-some-params-now :Enso.A
                         [:Link_Speeds :Off]
                         [:Input_Level 1]
                         [:Play_Speed :+2.0]
                         [:Rec_Speed :+2.0]
                         [:Dry_Level 0]
                         [:Dub_In_Place 0]
                         [:Feedback 0.5])

(px/xmit-some-params-now :Enso.B
                         [:Link_Speeds :Off]
                         [:Input_Level 1]
                         [:Play_Speed :+1.0]
                         [:Rec_Speed :-0.5]
                         [:Dry_Level 0]
                         [:Dub_In_Place 0]
                         [:Feedback 0.5])

(ctrl/mix :Enso.B :IO -20 10)

(ctrl/makenote :Enso.A (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                 :Overdub))

(ctrl/makenote :Enso.B (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                 :Overdub))

(px/get-matching s/PARAMS :Enso.A #"Level|Dub")
(px/get-matching-to-dict s/PARAMS :Enso.A #"Quant|Unit")
(px/get-matching-to-dict s/PARAMS :Enso.A #"Satur|Chor")


(px/xmit-some-params-now :Enso.B
                         [:Mode_Quantize :Measure]
                         [:Saturation 0]
                         [:Chorus_Depth 0.5])

(ctrl/makenote :Enso.A (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                 :Overdub))
(ctrl/makenote :Enso.B (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                 :Overdub))

;; ---
(px/xmit-some-params-now :Enso.A
                         [:Mode_Quantize :Free])
(px/xmit-some-params-now :Enso.A
                         [:Saturation 0.5])
(go
  (<! (ctrl/makenote :Enso.A (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                       :Overdub)))
  (<! (async/timeout 250))
  (<! (ctrl/makenote :Enso.A (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                       :Play))))
;; ---

(px/xmit-some-params-now :Enso.A [:Dub_In_Place 0])
(px/xmit-some-params-now :Enso.A [:Dub_In_Place 1])


(go
  (<! (ctrl/mix :Enso.A :IO 5 10))
  (<! (ctrl/mix :Enso.B :IO -40 10)))

(ctrl/mix :Enso.A :IO 0 10)
(ctrl/mix :Enso.B :IO -40 10)
(ctrl/mix :Enso.B :ODS.B 0 5)

(ctrl/mix :Enso.A :Replika_XT -40 10)
