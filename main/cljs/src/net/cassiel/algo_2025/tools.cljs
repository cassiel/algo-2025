(ns net.cassiel.algo-2025.tools)

(defn kw-uuid
  "Fresh random UUID as a keyword (usable as a map key)."
  []
  (keyword (str (random-uuid))))
