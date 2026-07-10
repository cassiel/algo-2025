(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as s]
            [net.cassiel.algo-2025.devices :as dev]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

;; SCENE 0 (setup.cljs):
;; - Handlers
;; - Load VSTs, enable reflection
;; - Start DSP and transport

;; SCENE 1: RAW DRUMS

(reset! state/SEQ {:sequences {} :messages nil})

(ctrl/mix-path :Microtonic :IO)
(ctrl/mix-path)

(->> (reset! state/SEQ {:sequences {:main {1 [[0 :Microtonic :note :C#1 64 100]]}}
                        :messages  nil})
     (cx/conformer ::seq/sequencer-state))

;; SCENE 2:
;; - Incorporate Enso.A (idle, 100% wet, so no passthrough)

(ctrl/mix-paths [:Microtonic :IO]
                [:Microtonic :Enso.A :IO])

;; Enso base state:

(ctrl/window :Enso.A 1)

(go (<! (ctrl/read :Enso.A "BaseEnso")))

;; Punch in Enso.A, one bar:
;; 4.1 Reset and 4.5 prime record; next 4.5 prime overdub.

(let [uuid (t/kw-uuid)
      enso :Enso.A]
  (swap! state/SEQ assoc-in [:sequences uuid]
         {4 [[0.1 enso :note dev/CLEAR-LOOP 64 100]
             [0.5 enso :note dev/RECORD 64 100]
             (fn [seq] (assoc seq uuid {4 [[0.5 enso :note dev/OVERDUB 64 100]
                                           (fn [seq] (dissoc seq uuid))]}))]}))

;; Don't use whilst Enso is live - not quantized.

(comment (doseq [enso [:Enso.A]]
           (px/xmit-some-params-now enso
                                    [:Link_Speeds :Off]
                                    [:Input_Level 1]
                                    [:Play_Speed :+1.0]
                                    [:Rec_Speed :-2.0]
                                    [:Dry_Level 0]
                                    [:Dub_In_Place 1]
                                    [:Feedback 0.5])))

;; Quantised change - but little error chacking.

(let [uuid (t/kw-uuid)
      enso :Enso.A]
  (swap! state/SEQ assoc-in [:sequences uuid]
         {1 [(cons 0 (px/param-packet :Enso.A :Rec_Speed :-1.0))
             (cons 0 (px/param-packet :Enso.A :Play_Speed :+2.0))
             (fn [seq] (assoc seq uuid {1 [(fn [seq] (dissoc seq uuid))]}))]}))


;; SCENE 3
;; Raw: Discord, base state

(go (<! (ctrl/read :Discord4 "BaseDiscord4")))

(ctrl/mix-paths [:Microtonic :IO]
                [:Microtonic :Discord4 :IO])

(let [uuid (t/kw-uuid)]
  (swap! state/SEQ assoc-in [:sequences uuid]
         {1 [(cons 0 (px/param-packet :Discord4 :L_Delay_Time :1.4))
             (cons 0 (px/param-packet :Discord4 :R_Delay_Time :1.8D))
             (fn [seq] (assoc seq uuid {2 [(cons 0 (px/param-packet :Discord4 :L_Delay_Time :1.8))
                                           (cons 0 (px/param-packet :Discord4 :R_Delay_Time :1.8D))
                                           (fn [seq] (dissoc seq uuid))]}))]}))
