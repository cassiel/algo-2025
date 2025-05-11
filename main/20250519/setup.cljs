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

(-> @s/SEQ :messages)

;; >>> BULK ROOT PRESET LOAD.

(go (<! (ctrl/read :Enso.A "BaseEnso"))
    (<! (ctrl/read :Enso.B "BaseEnso"))
    (<! (ctrl/read :ODS.A "BaseODS"))
    (<! (ctrl/read :ODS.B "BaseODS"))
    (<! (ctrl/read :Axon_2 "BaseAxon2"))
    (<! (ctrl/read :Microtonic "BaseMicrotonic"))
    (<! (ctrl/read :Discord4 "BaseDiscord4")))

;; >>> BULK PARAMETER REFLECTION.

(go (<! (px/request-params s/PARAMS :Microtonic))
    (<! (px/request-params s/PARAMS :Enso.A))
    (<! (px/request-params s/PARAMS :Enso.B))
    (<! (px/request-params s/PARAMS :Axon_2))
    (<! (px/request-params s/PARAMS :ODS.A))
    (<! (px/request-params s/PARAMS :ODS.B))
    (<! (px/request-params s/PARAMS :Discord4)))

;; >>> START

(go
  (<! (c/xmit :toggle :dsp 1))
  (<! (async/timeout 500))
  (<! (c/xmit :toggle :rewind 1))
  (<! (async/timeout 100))
  (<! (c/xmit :toggle :transport 1)))

;; >>> STOP

(go (<! (c/xmit :toggle :transport 0))
    (<! (async/timeout 250))
    (<! (c/xmit :toggle :dsp 0)))

;; >>> MIX ZERO.

(ctrl/mute-all 5)

;; Cleanup before save:

(comment (ctrl/unload-all [:Microtonic
                           :Enso.A
                           :Enso.B
                           :Axon_2
                           :ODS.A
                           :ODS.B
                           :Discord4]))
