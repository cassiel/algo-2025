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

(ctrl/restore :Replika_XT 0)

(-> dev/param-enums :Replika_XT keys)


(px/get-matching-to-dict s/PARAMS :Replika_XT #"Mix|Mode")
(px/get-matching-to-dict s/PARAMS :Replika_XT #"Time")

;; BROKEN: need to space
#_ (go
  (<! (px/xmit-some-params-now :Replika_XT [:Modulation_Mode 0]))
  #_ (<! (px/request-params s/PARAMS :Replika_XT))
  #_ (<! (px/xmit-some-params-now :Replika_XT
                               [:PS_Shift_L :+12]
                               [:PS_Shift_R :+7]
                               [:PS_Mix 1]
                               [:Mix 1]
                               )))


;; BROKEN (go (<! (px/xmit-some-params-now :Replika_XT [:Modulation_Mode :Pitch_Shifter])))
;;(px/xmit-some-params-now :Replika_XT [:Modulation_Mode :Pitch_Shifter])
;;(px/xmit-some-params-now :Replika_XT [:Modulation_Mode :Filter])

(px/xmit-some-params-now :Replika_XT
                         [:PS_Shift_L :+7]
                         [:PS_Shift_R :+12]
                         [:Delay_Time 0.4]
                         [:PS_Mix 1]
                         [:Mix 1]
                         )

(px/xmit-some-params-now :Replika_XT
                         [:PS_Shift_L :+7]
                         [:PS_Shift_R :-12]
                         [:Time_Mode :Dotted]
                         [:Delay_Time 0.4] ; dotted 1/8? TODO symbolic form?
                         [:Feedback 0.0]
                         [:Ping_Pong 0]
                         [:Amount 0] ; (Diffusion)
                         [:Size 0.5]
                         [:PS_Mix 1]
                         [:Mix 1])

(ctrl/mix :Replika_XT :Enso.A 0 10)
(ctrl/mix :Replika_XT :ODS.A -40 10)
(ctrl/mix :Replika_XT :ODS.B 0 10)
(ctrl/mix :Replika_XT :IO -40 0)

(ctrl/mix :Replika_XT :* -40 5)
