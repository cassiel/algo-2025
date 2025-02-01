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

(go (<! (px/request-params s/PARAMS :Other_Desert_Cities)))

(ctrl/window :Other_Desert_Cities 1)

(px/get-matching s/PARAMS :Other_Desert_Cities #"Level")
(px/get-matching-to-dict s/PARAMS :Other_Desert_Cities #"Output|Time")
(px/get-matching-to-dict s/PARAMS :Other_Desert_Cities #"Algo")

(px/xmit-some-params-now :Other_Desert_Cities
                         [:Mix 1])


(-> dev/param-enums :Other_Desert_Cities keys)
(-> dev/param-enums :Other_Desert_Cities :Algorithm)
(-> dev/param-enums :Other_Desert_Cities :Time_1)

(px/xmit-some-params-now :Other_Desert_Cities
                         [:Loop :Off]
                         [:Algorithm :Cactus])

(px/xmit-some-params-now :Other_Desert_Cities
                         [:Time_1 :1.1])


(ctrl/mix :Other_Desert_Cities :IO 0 5)
