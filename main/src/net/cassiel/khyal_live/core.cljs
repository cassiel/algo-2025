(ns net.cassiel.khyal-live.core
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [cljs-promises.async :as a]
            [cljs.core.async :as async :refer [<! >!]]))

(a/extend-promises-as-pair-channels!)
(def max-api (js/require "max-api"))

(defn var-outlet
  ([a] (.outlet max-api a))
  ([a b] (.outlet max-api a b))
  ([a b c] (.outlet max-api a b c))
  ([a b c d] (.outlet max-api a b c d))
  ([a b c d e] (.outlet max-api a b c d e))
  ([a b c d e f] (.outlet max-api a b c d e f))
  ([a b c d e f g] (.outlet max-api a b c d e f g))
  ([a b c d e f g h] (.outlet max-api a b c d e f g h))
  ([a b c d e f g h i] (.outlet max-api a b c d e f g h i)))

(defn de-keyword [x]
  (if (keyword? x) (name x) x))

(defn xmit [& args]
  (apply var-outlet (map de-keyword args)))
