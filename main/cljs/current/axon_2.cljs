(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as state]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

;; >>> OUTPUTS:

(ctrl/mix-path :Axon_2 :IO)
(ctrl/mix-path :IO :IO)
(ctrl/mix-paths [])

(go
  (<! (ctrl/mix :Axon_2 :Enso.A ctrl/OFF 5))
  (<! (ctrl/mix :Axon_2 :Enso.B ctrl/OFF 5)))

(ctrl/mix :Axon_2 :Enso.A ctrl/OFF 5)
(ctrl/mix :Axon_2 :ODS.A ctrl/OFF 10)

(ctrl/mix-path :Axon_2 :IO)

(ctrl/mix-path :Axon_2 :Discord4 :IO)

(ctrl/mix-path :Axon_2 :ODS.A :IO)

(ctrl/mix-paths [:Axon_2 :ODS.A :IO]
                [:Axon_2 :ODS.B :IO])


(ctrl/master -5 3)

(ctrl/mute-all 5)
