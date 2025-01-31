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

;; >>> STARTUP: Generic handler:

(ctrl/handle :request
             (fn [pos]
               (let [{:keys [messages]} (swap! SEQ seq/process-request pos)]
                 (doseq [x messages]
                   (apply c/xmit :seq :add :main x))))

             :pname
             (fn [& args] (apply px/pname-in PARAMS args))

             :pvalue
             (fn [& args] (apply px/pvalue-in PARAMS args)))

;; >>> PREFLIGHT: MIDI-capable snapshot recalls for loopers.

(go (<! (ctrl/restore :Enso.A 0))
    (<! (ctrl/restore :Enso.B 0)))

;; >>> PRELOAD: request all parameters:

(go
  (<! (px/request-params PARAMS :Microtonic))
  (<! (px/request-params PARAMS :Axon_2))
  (<! (px/request-params PARAMS :Other_Desert_Cities))
  (<! (px/request-params PARAMS :Enso.A))
  (<! (px/request-params PARAMS :Enso.B))
  (<! (px/request-params PARAMS :Replika_XT)))

;; >>> MIXING

(ctrl/mix :* :* -40 1)

;; >>> SCENE 1: Microtonic into Enso.A

(ctrl/mix :Microtonic :IO 0 10)

(ctrl/mix :Microtonic :Enso.A 0 1)

(px/get-matching PARAMS :Enso.A #"Level|Dub")

(px/xmit-some-params-now :Enso.A
                         [:Link_Speeds :Off]
                         [:Input_Level 1]
                         [:Play_Speed :+1.0]
                         [:Rec_Speed :+0.5]
                         [:Dry_Level 0]
                         [:Dub_In_Place 1]
                         [:Feedback 0.5])

(ctrl/makenote :Enso.A (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                 :Overdub))

(px/xmit-some-params-now :Enso.A [:Dub_In_Place 1])

(ctrl/mix :Enso.A :IO -5 10)

(ctrl/makenote :Microtonic (+ 60 (rand-int 16)))
(ctrl/mix :Microtonic :IO -40 10)

;; >>> Enso.B

(ctrl/mix :Microtonic :Enso.B 0 1)

(px/get-matching PARAMS :Enso.B #"Level|Dub")

(px/xmit-some-params-now :Enso.B
                         [:Link_Speeds :Off]
                         [:Input_Level 1]
                         [:Play_Speed :+1.0]
                         [:Rec_Speed :+2.0]
                         [:Dry_Level 0]
                         [:Dub_In_Place 1]
                         [:Feedback 0.5])

(ctrl/makenote :Enso.B (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                 :Overdub))

(px/xmit-some-params-now :Enso.B [:Dub_In_Place 0])

(ctrl/mix :Enso.B :IO 0 10)

(ctrl/makenote :Microtonic (+ 60 (rand-int 16)))
(ctrl/mix :Microtonic :IO -40 10)

(ctrl/mix :Enso.A :IO -40 10)
