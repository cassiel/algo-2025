(ns net.cassiel.algo-2025.tools
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [cljs.core.async :as async :refer [put! chan <! >!]]))

(defn kw-uuid
  "Fresh random UUID as a keyword (usable as a map key)."
  []
  (keyword (str (random-uuid))))

(defn async-run
  "Apply `f` to `args` in sequence asynchronously, with an interval between.
   returns a channel for completion."
  [f args & {:keys [interval]
             :or {interval 0}}]
  (if (seq args)
    (let [[a & as] args]
      (go
        (<! (f a))
        (<! (async/timeout interval))
        (<! (async-run f as :interval interval))))
    (go (<! (async/timeout 0)))))
