(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as state]
            [net.cassiel.algo-2025.devices :as dev]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.conformer :as cx]
            [net.cassiel.algo-2025.tools :as t]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

(ctrl/read :ODS.A "BaseODS")
(ctrl/read :ODS.B "BaseODS")
(ctrl/window :ODS.A 1)

(ctrl/mix-paths #_ [:Microtonic :Enso.A :ODS.A :IO]
                #_ [:Microtonic :ODS.A :IO]
                #_ [:Microtonic :Enso.A :ODS.A :IO]
                [:IO :IO]
                [:IO :Enso.A :ODS.A :IO]
                [:IO :Enso.B :ODS.A :IO]
                [:IO :Enso.A :ODS.B :IO]
                [:IO :Enso.B :ODS.B :IO]
                #_ [:IO :Enso.A :Discord4 :ODS.B :IO]
                #_ [:IO :ODS.B :IO]
                )

;; Preset state:

(px/get-matching-to-dict state/PARAMS :ODS.A #"Speed|Heads")
(px/get-matching-to-dict state/PARAMS :ODS.A #"Saturation")
(px/get-matching-to-dict state/PARAMS :ODS.A #"Output|Time")
(px/get-matching-to-dict state/PARAMS :ODS.A #"Algorithm|Taps")
(px/get-matching-to-dict state/PARAMS :ODS.A #"Crossfeed|Mix|Regen")

;; CHEAT SHEET:

(-> dev/param-enums :ODS.A keys)
(-> dev/param-enums :ODS.A :Algorithm)
(-> dev/param-enums :ODS.A :_Time_1)
(-> dev/param-enums :ODS.A :Algo04.._#_Taps_1)
(-> dev/param-enums :ODS.A :Algo05.._Speed)
(-> dev/param-enums :ODS.A :Algo05.._Heads)
(dev/get-dev-enums-to-dict :ODS.A)

;; DESERT SHORES (1) - delay line

(px/xmit-some-params-now :ODS.A
                         [:Loop :Off]
                         [:Algorithm :Desert_Shores]
                         [:_Time_1 :1.2]
                         [:_Time_2 :1.8D]
                         [:Mix 0.5]
                         [:Regen 0.5]
                         )

(px/xmit-some-params-now :ODS.A
                         [:_Time_1 :1.4]
                         [:_Time_2 :1.4D]
                         [:Mix 0.75]
                         [:Regen 0.5]
                         )

(px/xmit-some-params-now :ODS.B
                         [:Mix 0.5]
                         [:Regen 0]
                         [:_Time_1 :1.4]
                         [:_Time_2 :1.4D]
                         [:Algo01.._Saturation 1])

(px/xmit-some-params-now :ODS.B
                         [:Regen 0.25]
                         )


;; THERMAL (4) - multitap 16

(px/xmit-some-params-now :ODS.B
                         [:Loop :Off]
                         [:Algorithm :Thermal]
                         [:Regen 0]
                         [:Algo04.._#_Taps_1 :1] ;; :1..:16
                         [:Algo04.._#_Taps_2 :2]
                         [:Mix 0.5])
(px/xmit-some-params-now :ODS.B
                         [:_Time_1 :1.4]
                         [:_Time_2 :1.4D])
(px/xmit-some-params-now :ODS.B
                         [:Regen 0.5])
(px/xmit-some-params-now :ODS.B
                         [:Algo04.._Crossfeed 0.8]
                         [:Algo04.._#_Taps_2 :2])

;; Note: fire in/out atomically on beat 1.

(let [ods :ODS.B
      uuid (t/uuid)]
  (swap! state/SEQ assoc-in [:sequences uuid]
         {1 [(cons 0 (px/param-packet ods :Algo04.._#_Taps_1 :16))
             (cons 0 (px/param-packet ods :Algo04.._#_Taps_2 :15))
             (fn [seq] (assoc seq uuid {1 [(cons 0 (px/param-packet ods :Algo04.._#_Taps_1 :1))
                                           (cons 0 (px/param-packet ods :Algo04.._#_Taps_2 :2))
                                           (fn [seq] (dissoc seq uuid))]}))]}))


;; MIRAGE (5) - tumble dry

(px/xmit-some-params-now :ODS.B
                         [:Loop :Off]
                         [:Algo05.._Speed :+1.0]
                         [:Algorithm :Mirage]
                         [:Algo05.._Heads :1]
                         [:Mix 1])

(px/xmit-some-params-now :ODS.B
                         [:Loop :Off]
                         [:Algo05.._Speed :+0.5]
                         [:Algo05.._Heads :4])

(px/xmit-some-params-now :ODS.A
                         [:Loop :Off]
                         [:Algo05.._Speed :+1.0]
                         [:Algo05.._Heads :4])

;; MOTORIK SECTION
(let [ods :ODS.A
      uuid (t/uuid)]
  (swap! state/SEQ assoc-in [:sequences uuid]
         {1 [(cons 0 (px/param-packet ods :Algo05.._Speed :-2.0))
             (fn [seq] (assoc seq uuid {4 [(cons 0 (px/param-packet ods :Algo05.._Speed :+0.5))
                                           (fn [seq] (dissoc seq uuid))]}))]}))

;; ENDGAME:
;; (Takes time)
(ctrl/mix-paths [:IO :Enso.A :ODS.A :IO]
                [:IO :Enso.B :ODS.B :IO]
                #_ [:IO :Enso.A :Discord4 :ODS.B :IO]
                #_ [:IO :ODS.B :IO]
                )
(doseq [ods [:ODS.A :ODS.B]]
  (px/xmit-some-params-now ods
                           [:Algo05.._Speed :0]
                           ))


(ctrl/mix :IO :ODS.B -40 5)

(ctrl/mix :ODS.A :IO -40 5)
(ctrl/mix :ODS.B :IO 0 10)

(ctrl/mix :ODS.B :IO -40 5)

(ctrl/mix :ODS.A :* -40 5)

(go (<! (ctrl/mix :ODS.A :IO -40 5))
    (<! (ctrl/mix :ODS.B :IO -40 5)))
