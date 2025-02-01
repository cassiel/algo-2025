(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as s]
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

(c/xmit :now :Enso.A :note 0 64 100)

(ctrl/window :Enso.B 0)

(ctrl/mix :Enso.B :IO -40 10)

(ctrl/makenote :Enso.A (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                 :Overdub))

(ctrl/makenote :Enso.B (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                 :ClearLoop))

(px/get-matching s/PARAMS :Enso.A #"Level|Dub")
(px/get-matching-to-dict s/PARAMS :Enso.A #"Quant|Unit")

(px/xmit-some-params-now :Enso.A
                         [:Link_Speeds :Off]
                         [:Input_Level 1]
                         [:Play_Speed :+1.0]
                         [:Rec_Speed :+2.0]
                         [:Dry_Level 0]
                         [:Dub_In_Place 0]
                         [:Feedback 0.5])

(px/xmit-some-params-now :Enso.B
                         [:Link_Speeds :Off]
                         [:Input_Level 1]
                         [:Play_Speed :+1.0]
                         [:Rec_Speed :-2.0]
                         [:Dry_Level 0]
                         [:Dub_In_Place 0]
                         [:Feedback 0.5])

(px/xmit-some-params-now :Enso.A
                         [:Mode_Quantize :Measure])

(ctrl/makenote :Enso.A (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                 :ClearLoop))

;; ---
(px/xmit-some-params-now :Enso.A
                         [:Mode_Quantize :Free])
(go
  (<! (ctrl/makenote :Enso.A (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                       :Overdub)))
  (<! (async/timeout 250))
  (<! (ctrl/makenote :Enso.A (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                       :Play))))
;; ---

(px/xmit-some-params-now :Enso.A [:Dub_In_Place 0])

(go
  (<! (ctrl/mix :Enso.A :IO -40 10))
  (<! (ctrl/mix :Enso.B :IO 0 10)))

(ctrl/mix :Enso.A :IO -40 10)
(ctrl/mix :Enso.B :IO -40 10)
