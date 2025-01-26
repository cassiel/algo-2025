(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [clojure.spec.alpha :as s]
            [goog.string :as gstring]
            [goog.string.format]))

(def SEQ (atom {:sequences {} :messages nil}))
(def PARAMS (atom {}))

;; Messages out to Max:
;; "win" [name] [1/0]: open or close named window (audio, basic, enso)
;; "now" [...m...]: output message
;; "seq" "add" "main" [pos] [...m...]: schedule message
;; "mix" "set" [x] [y] [db]: mixet setting

;; Messages [...m...]:
;; [device] "note" [p] [v] [d]: MIDI note with duration
;; [device] "param" [name/id] [val]: parameter change
;; [device] "params": request parameter names
;; [device] "get" [name-or-id]: request parameter value
;; [device] :plugged [0/1]: unplug/replug device to reset to INIT

;; Incoming:
;; "request" [beat]: request for messages for this beat (via "seq add")
;; "pname" [device] [param-name]: incoming parameter name
;; "pvalue" [device] [param-id] [value] [value-str]: incoming parameter value (such as change)

;; Generic handler:

(ctrl/handle :request
             (fn [pos]
               (let [{:keys [messages]} (swap! SEQ seq/process-request pos)]
                 (doseq [x messages]
                   (apply c/xmit :seq :add :main x))))

             :pname
             (fn [& args] (apply px/pname-in PARAMS args))

             :pvalue
             (fn [& args] (apply px/pvalue-in PARAMS args)))

;; WINDOW CONTROL: TODO broken for :seq/:main/:audio

(ctrl/window :seq 1)
(ctrl/window :main 1)
(ctrl/window :Microtonic)
(ctrl/window :Enso.A)
(ctrl/window :Enso.B)
(ctrl/window :Other_Desert_Cities)
(ctrl/window :Rift)
(ctrl/window :Replika_XT)
(ctrl/window :audio 1)

;; params

(px/request-params PARAMS :Enso.A)
(px/request-params PARAMS :Replika_XT)

(px/get-matching PARAMS :Enso.A #"Link")
(px/get-matching-to-dict PARAMS :Enso.A #"Mode")
(px/get-matching PARAMS :Enso.A #"Speed")
(px/get-matching PARAMS :Replika_XT #"Mix")
