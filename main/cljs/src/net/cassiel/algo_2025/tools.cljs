(ns net.cassiel.algo-2025.tools)

(def crypto (js/require "crypto"))

(defn uuid [] (-> (.randomUUID crypto) keyword))
