(ns net.cassiel.algo-2025.core
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [cljs.core.async :as async :refer [<! >!]]))

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

(defn var-post
  ([a] (.post max-api a))
  ([a b] (.post max-api a b))
  ([a b c] (.post max-api a b c))
  ([a b c d] (.post max-api a b c d))
  ([a b c d e] (.post max-api a b c d e))
  ([a b c d e f] (.post max-api a b c d e f))
  ([a b c d e f g] (.post max-api a b c d e f g))
  ([a b c d e f g h] (.post max-api a b c d e f g h))
  ([a b c d e f g h i] (.post max-api a b c d e f g h i)))

(defn de-keyword [x]
  (if (keyword? x) (name x) x))

(defn xmit [& args]
  (apply var-outlet (map de-keyword args)))

(defn alert [& args]
  (apply xmit :alert args))

(defn error [& args]
  (.post max-api (clojure.string/join " " (map de-keyword args)) "error"))
