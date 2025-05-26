(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as state]
            [net.cassiel.algo-2025.devices :as dev]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.tools :as t]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

(ctrl/read :Discord4 "BaseDiscord4")

(ctrl/window :Discord4 1)

(ctrl/mix-paths [:IO :Discord4 :Enso.A :IO]
                [:IO :Discord4 :Enso.B :IO])
(ctrl/mix-path)
(ctrl/master 0)

(dev/get-dev-enums-to-dict :Discord4)

(px/get-matching state/PARAMS :Discord4 #".*Level.*")
(px/get-matching-to-dict state/PARAMS :Discord4 #".*Shift.*")
(px/get-matching-to-dict state/PARAMS :Discord4 #".*Size.*")
(px/get-matching-to-dict state/PARAMS :Discord4 #".*Filter.*")
(px/get-matching-to-dict state/PARAMS :Discord4 #".*Mode.*")
(px/get-matching-to-dict state/PARAMS :Discord4 #".*Time.*")
(px/get-matching-to-dict state/PARAMS :Discord4 #".*Feed.*")

(px/xmit-some-params-now :Discord4
                         [:Shift_Mode :P1]
                         [:L_Delay_Time :1.4] ; TODO sequence these!
                         [:R_Delay_Time :1.4D]
                         [:L_Shift_Amount :-12]
                         [:R_Shift_Amount :-12]
                         [:L_Feedback 0.75]
                         [:R_Feedback 0.75]
                         )

(let [uuid (t/uuid)]
  (swap! state/SEQ assoc-in [:sequences uuid]
         {1 [(cons 0 (px/param-packet :Discord4 :L_Delay_Time :1.4))
             (cons 0 (px/param-packet :Discord4 :R_Delay_Time :1.4D))
             (fn [seq] (assoc seq uuid {2 [(cons 0 (px/param-packet :Discord4 :L_Delay_Time :1.8))
                                           (cons 0 (px/param-packet :Discord4 :R_Delay_Time :1.8D))
                                           (fn [seq] (dissoc seq uuid))]}))]}))


(px/xmit-some-params-now :Discord4
                         [:Shift_Mode :G2]
                         )

(px/xmit-some-params-now :Discord4
                         [:Shift_Mode :P1]
                         [:L_Shift_Amount :0]
                         [:R_Shift_Amount :0]
                         [:L_Buffer_Size 0] ;; P1/P2
                         [:R_Buffer_Size 0] ;; P1/P2
                         [:L_Delay_Sync :On]
                         [:R_Delay_Sync :On]
                         [:L_Delay_Time :1.32]
                         [:R_Delay_Time :1.32]
                         )

(px/xmit-some-params-now :Discord4
                         [:Shift_Mode :G2]
                         )

(px/xmit-some-params-now :Discord4
                         [:L_Filter_Frequency 0.5]
                         [:R_Filter_Frequency 0.5])

(ctrl/mix-path :IO :Discord4 :IO)
