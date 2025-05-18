(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.state :as s]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

;; Debug:
(deref PARAMS)
(-> PARAMS deref :Microtonic)

(c/xmit :FOO :BAR)

(name :A#_B)

(keyword (str 2))

(ctrl/mix-path :Microtonic :IO)



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

;; *** WINDOW CONTROL

(ctrl/window :Microtonic)
(ctrl/window :Enso.A)
(ctrl/window :Enso.B)
(ctrl/window :Other_Desert_Cities)
(ctrl/window :Rift)
(ctrl/window :Replika_XT)

(ctrl/window :seq)
(ctrl/window :main 1)
(ctrl/window :audio)

;; *** MIX

(ctrl/mix :* :* -40 1)

(ctrl/mix :Replika_XT :IO 0 1)
(ctrl/mix :Enso.A :IO -40 5)

(ctrl/mix :Microtonic :IO 0 5)
(ctrl/mix :Microtonic :Enso.B -40 1)
(ctrl/mix :Enso.A :Other_Desert_Cities -10 5)
(ctrl/mix :Microtonic :Other_Desert_Cities 0 1)
(ctrl/mix :Other_Desert_Cities :IO 0 0)

;; MIDI test for Enso:

(ctrl/makenote :Enso.A (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                 :ClearLoop))


;; MIDI test for Microtonic:

(ctrl/makenote :Microtonic (+ 60 (rand-int 16)))


;; Params

(px/request-params PARAMS :Microtonic)
(px/request-params PARAMS :Other_Desert_Cities)
(px/request-params PARAMS :Enso.A)
(px/request-params PARAMS :Replika_XT)

(px/get-matching PARAMS :Enso.A #"Speed|Link")
(px/get-matching-to-dict PARAMS :Enso.A #"Mode|Dub")
(px/get-matching-to-dict PARAMS :Enso.A #"Level")
(px/get-matching-to-dict PARAMS :Enso.A #"Level|MIDI")
(px/get-matching-to-dict PARAMS :Other_Desert_Cities #"Mix|Algorithm|Speed")
(px/get-matching PARAMS :Replika_XT #"Mix")

(go
  (<! (ctrl/reset-device :Enso.A))
  (px/request-params PARAMS :Enso.A)
  (ctrl/window :Enso.A 1))

(px/xmit-some-params-now :Enso.A
                         [:Input_Level 1])

(px/xmit-some-params-now :Other_Desert_Cities
                         [:Loop :Off]
                         [:Algorithm :Cactus])

(px/xmit-some-params-now :Other_Desert_Cities
                         [:Algo03.._Speed_1 0.75])

;; Microtonic:

(px/get-matching-to-dict PARAMS :Microtonic #"Morph|Mute")
(px/get-matching-to-dict PARAMS :Microtonic #"NFil")
(px/get-matching-to-dict PARAMS :Microtonic #"Level")
(px/get-matching-to-dict PARAMS :Microtonic #"Pattern")


(px/xmit-some-params-now :Microtonic [:Mute1 0])

;; Test symbolic parameter values:
(px/xmit-some-params-now :Enso.A
                         [:Link_Speeds :Off]
                         [:Input_Level 1]
                         [:Play_Speed :+1.0]
                         [:Rec_Speed :-0.5]
                         [:Dry_Level 0]
                         [:Feedback 0.5])

(px/xmit-some-params-now :Enso.A
                         [:Play_Speed :+1.0]
                         [:Rec_Speed :-0.5]
                         [:Dub_In_Place 1]
                         )


(c/alert "AAA")

(c/error "OTHER" 1 2 3)

:A.B

;; Sequencing.

(-> s/SEQ deref :sequences)

(swap! s/SEQ
       assoc-in
       [:sequences :enso]
       ;; Trigger on 2:
       {4 [[0.75 :Enso.A :note (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                         :Record) 64 0]]
        1 [[0.25 :Enso.A :note (.indexOf [:ClearLoop :Record :Overdub :Play :Stop]
                                         :Overdub) 64 0]]}
       )

(swap! s/SEQ assoc-in [:sequences :enso] nil)

(ctrl/write :Discord4)
