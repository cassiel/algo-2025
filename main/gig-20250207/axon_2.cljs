(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as s]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

(go
  (<! (px/request-params s/PARAMS :Axon_2)))

(ctrl/window :Axon_2)

;; >>> OUTPUTS:

(ctrl/mix :Axon_2 :IO -40 10)

(ctrl/mix :Axon_2 :Enso.A -40 5)
(ctrl/mix :Axon_2 :Enso.B -40 5)

(ctrl/mix :Axon_2 :Other_Desert_Cities 0 5)
