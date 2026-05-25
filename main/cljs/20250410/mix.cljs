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

(go (<! (ctrl/mix :* :* -40 5))
    (<! (ctrl/mix :IO :ODS.A 0 5))
    (<! (ctrl/mix :ODS.A :IO 0 5)))

;; TAKE OUT <! ?

(do (ctrl/mix :* :* -40 5)
    (ctrl/mix :IO :ODS.A 0 5)
    (ctrl/mix :ODS.A :IO 0 5))


(ctrl/mix :* :* -40 5)
