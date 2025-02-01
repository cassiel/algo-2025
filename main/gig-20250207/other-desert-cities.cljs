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
(ctrl/restore :Other_Desert_Cities 0)

(ctrl/window :Other_Desert_Cities 1)

(px/request-params s/PARAMS :Other_Desert_Cities)

(px/get-matching-to-dict s/PARAMS :Other_Desert_Cities #"Speed")
(px/get-matching-to-dict s/PARAMS :Other_Desert_Cities #"Output|Time")
(px/get-matching-to-dict s/PARAMS :Other_Desert_Cities #"Algorithm|Taps")
(px/get-matching-to-dict s/PARAMS :Other_Desert_Cities #"Crossfeed|Mix|Regen")

(px/xmit-some-params-now :Other_Desert_Cities
                         [:Mix 1]
                         [:Regen 0])


(-> dev/param-enums :Other_Desert_Cities keys)
(-> dev/param-enums :Other_Desert_Cities :Algorithm)
(-> dev/param-enums :Other_Desert_Cities :_Time_1)
(-> dev/param-enums :Other_Desert_Cities :Algo04.._#_Taps_1)

;; DESERT SHORES (1)

(px/xmit-some-params-now :Other_Desert_Cities
                         [:Loop :Off]
                         [:Algorithm :Desert_Shores]
                         [:_Time_1 :1.4]
                         [:_Time_2 :1.4D]
                         [:Mix 1]
                         [:Regen 0.2]
                         )


;; THERMAL (4)

(px/xmit-some-params-now :Other_Desert_Cities
                         [:Loop :Off]
                         [:Algorithm :Thermal]
                         [:Algo04.._#_Taps_1 0.12]
                         [:Mix 1])
(px/xmit-some-params-now :Other_Desert_Cities
                         [:_Time_2 :1.4D])
(px/xmit-some-params-now :Other_Desert_Cities
                         [:Regen 0.4])
(px/xmit-some-params-now :Other_Desert_Cities
                         [:Algo04.._Crossfeed 0]
                         [:Algo04.._#_Taps_2 :8])

;; MIRAGE (5)

(px/xmit-some-params-now :Other_Desert_Cities
                         [:Loop :Off]
                         [:Algorithm :Mirage]
                         [:Mix 1])

(px/xmit-some-params-now :Other_Desert_Cities
                         [:Loop :Off]
                         [:Algorithm :Mirage]
                         [:Algo05.._Speed +1.0])

(px/xmit-some-params-now :Other_Desert_Cities
                         [:Algo05.._Speed :-0.5])

(ctrl/mix :Other_Desert_Cities :IO 0 5)
