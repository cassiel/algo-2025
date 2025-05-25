(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as s]
            [net.cassiel.algo-2025.devices :as dev]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

(ctrl/read :Discord4 "BaseDiscord4")

(ctrl/window :Discord4 1)

(ctrl/mix-path :Microtonic :Discord4 :Enso.A :IO)
(ctrl/mix-path)
(ctrl/master 0)

(dev/get-dev-enums-to-dict :Discord4)

(px/get-matching s/PARAMS :Discord4 #".*Level.*")
(px/get-matching-to-dict s/PARAMS :Discord4 #".*Shift.*")
(px/get-matching-to-dict s/PARAMS :Discord4 #".*Size.*")
(px/get-matching-to-dict s/PARAMS :Discord4 #".*Filter.*")
(px/get-matching-to-dict s/PARAMS :Discord4 #".*Mode.*")
(px/get-matching-to-dict s/PARAMS :Discord4 #".*Time.*")

(ctrl/mix :IO :Discord4 0 5)
(ctrl/mix :Discord4 :IO 0 5)

(px/xmit-some-params-now :Discord4
                         [:L_Delay_Time :1.8]
                         [:R_Delay_Time :1.8D]
                         [:L_Shift_Amount :-12]
                         [:R_Shift_Amount :-12]
                         )

(px/xmit-some-params-now :Discord4
                         [:Shift_Mode :P1]
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
