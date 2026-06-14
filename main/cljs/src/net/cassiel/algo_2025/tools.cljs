(ns net.cassiel.algo-2025.tools
  (:refer-clojure :exclude [uuid]))

(def crypto (js/require "crypto"))

(defn uuid [] (-> (.randomUUID crypto) keyword))
