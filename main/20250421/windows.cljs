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

;; >>> CORE WINDOWS.

(ctrl/window :seq)
(ctrl/window :main 1)
(ctrl/window :audio 1)

;; >>> DEVICE WINDOWS.

(ctrl/window :Axon_2 0)
(ctrl/window :Enso.B 1)
(ctrl/window :Enso.A 1)
(ctrl/window :Microtonic 0)
(ctrl/window :ODS.A 0)
(ctrl/window :ODS.B 0)
(ctrl/window :Discord4 0)
