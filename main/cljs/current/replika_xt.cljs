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
            [cljs.core.async.interop :refer [<p!]]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

(px/get-matching state/PARAMS :Replika_XT #"Mix")
(px/get-matching state/PARAMS :Replika_XT #"Mode")
(px/get-matching state/PARAMS :Replika_XT #"Time")
(px/get-matching state/PARAMS :Replika_XT #"Shift")
(px/get-matching state/PARAMS :Replika_XT #"Dual_Mode")


(dev/get-dev-enums-to-dict :Replika_XT)

(px/xmit-some-params-now :Replika_XT [:Modulation_Mode :Pitch_Shifter])
(px/xmit-some-params-now :Replika_XT [:Mix 1])
(px/xmit-some-params-now :Replika_XT [:Time_Mode_A :Straight])

;; NOPE!
;; (px/xmit-some-params-now :Replika_XT [:Single/Dual_Mode 0])

(px/xmit-some-params-now :Replika_XT
                         [:PS_Shift_L :+12]
                         [:PS_Shift_R :+7]
                         [:PS_Mix 1]
                         [:Mix 1]
                         [:Time_Mode_A :Dotted]
                         [:Delay_Time_A 0.3]
                         [:Delay_Time_B 0.4])
