(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.farm-2019.core :as c]
            [net.cassiel.farm-2019.params :as px]
            [net.cassiel.farm-2019.sequencing :as seq]
            [net.cassiel.farm-2019.control :as ctrl]
            [net.cassiel.farm-2019.conformer :as cx]
            [cljs-promises.core :as p]
            [cljs-promises.async :as a :refer-macros [<?]]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [clojure.spec.alpha :as s]
            [spectacles.lenses :as lens]
            [goog.string :as gstring]
            [goog.string.format]))

;; Nested VST parameter maps.
(def PARAMS (atom {}))

;; Generic handler. (For this demo, no sequence callback handling.)
(ctrl/handle :pname
             (fn [& args] (apply px/pname-in PARAMS args))

             :pvalue
             (fn [& args] (apply px/pvalue-in PARAMS args)))

;; Window control.
(ctrl/window :Enso 1)
(ctrl/window :audio 0)

;; VST parameter requests.
(reset! PARAMS nil)
(deref PARAMS)

(px/request-params PARAMS :Enso)

(px/get-matching PARAMS :Enso #"Link")
(px/get-matching PARAMS :Enso #"Mode")
(px/get-matching PARAMS :Enso #"Dry")

(px/get-matching-to-dict PARAMS :Enso #"Speed")

;; Mix.
(ctrl/mute-all)

;; Kick off looper:
(px/xmit-some-params-now :Enso [:Mode :Record])
(px/xmit-some-params-now :Enso [:Mode :Overdub])

;; Looper in mix:
(ctrl/mix :Enso :Enso -40)
(ctrl/mix :IO :Enso 0 10)
(ctrl/mix :Enso :IO 0 10)

;; Speed changes:
(px/xmit-some-params-now :Enso
                         [:Link_Speeds :Off])

(px/xmit-some-params-now :Enso
                         [:Play_Speed :-1.0]
                         [:Rec_Speed :+2.0])

(px/xmit-some-params-now :Enso
                         [:Play_Speed :-1.0]
                         [:Rec_Speed :+1.0])

;; Ramp up feedback
(px/xmit-some-params-now :Enso [:Feedback 0.7])
(ctrl/mix :Enso :Enso -15)
