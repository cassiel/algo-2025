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

(-> dev/param-enums :Discord4 keys)     ;; TODO: Not yet

(px/get-matching s/PARAMS :Discord4 #".*Level.*")
(px/get-matching-to-dict s/PARAMS :Discord4 #".*Shift.*")
(px/get-matching-to-dict s/PARAMS :Discord4 #".*Filter.*")
(px/get-matching-to-dict s/PARAMS :Discord4 #".*Mode.*")

(ctrl/mix :IO :Discord4 0 5)
(ctrl/mix :Discord4 :IO 0 5)

(px/xmit-some-params-now :Discord4
                         [:L_Shift_Amount 0.25]
                         [:R_Shift_Amount 0.75])

(px/xmit-some-params-now :Discord4
                         [:L_Filter_Frequency 0.5]
                         [:R_Filter_Frequency 0.5])

;; TODO: mode into param enums.

(px/xmit-some-params-now :Discord4
                         [:Shift_Mode 1])

(ctrl/mix :Discord4 :IO -40 5)
(ctrl/mix :IO :IO -40 5)
(ctrl/mix :* :* -40 5)
