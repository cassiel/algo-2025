(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as s]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

(ctrl/window :Microtonic 0)
(ctrl/restore :Microtonic 0)

(ctrl/mix :Microtonic :IO 0 10)

(ctrl/mix :Microtonic :Enso.A -10 5)
(ctrl/mix :Microtonic :Enso.B 0 5)

(ctrl/mix :Microtonic :ODS.A 0 1)
(ctrl/mix :Microtonic :ODS.B 0 1)


(ctrl/makenote :Microtonic (+ 60 (rand-int 16)))
(ctrl/mix :Microtonic :IO 0 10)
(ctrl/mix :Microtonic :* -40 10)

#_ (-> s/PARAMS deref :Microtonic :params)
