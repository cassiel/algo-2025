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
    (<! (px/request-params s/PARAMS :Discord4)))

(go
  (<! (c/xmit :toggle :dsp 1))
  (<! (async/timeout 500))
  (<! (c/xmit :toggle :rewind 1))
  (<! (async/timeout 100))
  (<! (c/xmit :toggle :transport 1)))

(go (<! (c/xmit :toggle :transport 0))
    (<! (async/timeout 250))
    (<! (c/xmit :toggle :dsp 0)))

;; >>> MIX ZERO.

(ctrl/mix :* :* -40 10)

(ctrl/mix :IO :IO -10 5)
