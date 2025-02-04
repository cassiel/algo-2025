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

;; >>> STARTUP: Generic handler.

(ctrl/handle :request
             (fn [pos]
               (let [{:keys [messages]} (swap! s/SEQ seq/process-request pos)]
                 (doseq [x messages]
                   (apply c/xmit :seq :add :main x))))

             :pname
             (fn [& args] (apply px/pname-in s/PARAMS args))

             :pvalue
             (fn [& args] (apply px/pvalue-in s/PARAMS args)))

;; >>> BULK PARAMETER REFLECTION.

(go (<! (px/request-params s/PARAMS :Microtonic))
    (<! (px/request-params s/PARAMS :Enso.A))
    (<! (px/request-params s/PARAMS :Enso.B))
    (<! (px/request-params s/PARAMS :Axon_2))
    (<! (px/request-params s/PARAMS :ODS.A))
    (<! (px/request-params s/PARAMS :ODS.B))
    (<! (px/request-params s/PARAMS :Replika_XT)))

(c/xmit :toggle :dsp 1)
(c/xmit :toggle :transport 1)

(go (<! (async/timeout 500)))

(go (<! (c/xmit :toggle :transport 0))
    (<! (async/timeout 250))
    (<! (c/xmit :toggle :dsp 0)))

;; >>> MIX ZERO.

(ctrl/mix :* :* -40 10)

;; >>> CORE WINDOWS.

(ctrl/window :seq)
(ctrl/window :main 1)
(ctrl/window :audio)

;; >>> DEVICE WINDOWS.

(ctrl/window :Axon_2 0)
(ctrl/window :Enso.B 0)
(ctrl/window :Enso.A 0)
(ctrl/window :Microtonic 0)
(ctrl/window :ODS.A 0)
(ctrl/window :ODS.B 0)
(ctrl/window :Replika_XT 0)
