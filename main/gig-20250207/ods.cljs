(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as s]
            [net.cassiel.algo-2025.devices :as dev]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

;; Preset state:

(go (<! (ctrl/restore :ODS.A 0)
        (ctrl/restore :ODS.B 0)))

(ctrl/window :ODS.A 0)
(ctrl/window :ODS.B 1)

(px/get-matching-to-dict s/PARAMS :ODS.A #"Speed|Heads")
(px/get-matching-to-dict s/PARAMS :ODS.A #"Output|Time")
(px/get-matching-to-dict s/PARAMS :ODS.A #"Algorithm|Taps")
(px/get-matching-to-dict s/PARAMS :ODS.A #"Crossfeed|Mix|Regen")

(px/xmit-some-params-now :ODS.A
                         [:Mix 1]
                         [:Regen 0.5])


(-> dev/param-enums :ODS.A keys)
(-> dev/param-enums :ODS.A :Algorithm)
(-> dev/param-enums :ODS.A :_Time_1)
(-> dev/param-enums :ODS.A :Algo04.._#_Taps_1)
(-> dev/param-enums :ODS.A :Algo05.._Speed)

;; DESERT SHORES (1) - delay line

(px/xmit-some-params-now :ODS.A
                         [:Loop :Off]
                         [:Algorithm :Desert_Shores]
                         [:_Time_1 :1.8]
                         [:_Time_2 :1.8D]
                         [:Mix 1]
                         [:Regen 0]
                         )


;; THERMAL (4) - multitap 16

(px/xmit-some-params-now :ODS.A
                         [:Loop :Off]
                         [:Algorithm :Thermal]
                         [:Regen 0.5]
                         [:Algo04.._#_Taps_1 :2]
                         [:Mix 1])

(px/xmit-some-params-now :ODS.A
                         [:_Time_2 :1.2]
                         [:_Time_2 :1.2D])
(px/xmit-some-params-now :ODS.B
                         [:Regen 0.5])
(px/xmit-some-params-now :ODS.A
                         [:Algo04.._Crossfeed 0.5]
                         [:Algo04.._#_Taps_2 :3])

;; MIRAGE (5) - tumble

(px/xmit-some-params-now :ODS.A
                         [:Loop :Off]
                         [:Algorithm :Mirage]
                         [:Mix 1])

(px/xmit-some-params-now :ODS.B
                         [:Algo05.._Speed :+0.5]
                         )

(px/xmit-some-params-now :ODS.A
                         [:Algo05.._Speed :0]
                         [:Algo05.._Heads :4])

(ctrl/mix :ODS.A :IO 0 5)
(ctrl/mix :ODS.B :IO 0 5)

(ctrl/mix :ODS.B :Enso.A -40 10)

(ctrl/mix :ODS.A :* -40 5)

(go (<! (ctrl/mix :ODS.A :IO -40 5))
    (<! (ctrl/mix :ODS.B :IO -40 5)))
