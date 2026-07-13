(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.conformer :as cx]
            [net.cassiel.algo-2025.tools :as t]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

;; Simple async post, with hard-wired delay.

(c/post "A")

;; The wrong way:

(defn wrong [toks]
  (doseq [t toks]
    (go (<! (c/post t))
        (<! (async/timeout 1000)))))

(wrong ["A" "B" "C" "D" "E"])

;; The right-ish way (but without a proper blocking channel for completion):

(defn right-ish [toks]
  (when (seq toks)
    (let [[t & ts] toks]
      (go
        (<! (c/post t))
        (<! (async/timeout 1000))
        (right ts)))))

;; Does a =<!= on =nil= (and that crashes node...)

(go
  (<! (right-ish ["A" "B" "C" "D" "E"]))
  (<! (c/post "DONE")))

(defn righter [toks]
  (if (seq toks)
    (let [[t & ts] toks]
      (go
        (<! (c/post t))
        (<! (async/timeout 1000))
        (<! (righter ts))))
    (go (<! (async/timeout 0)))))

(go
  (<! (righter ["A" "B" "C" "D" "E"]))
  (<! (c/post "DONE")))

(go (<! (async/timeout 0)))

(go
  (<! (t/async-run #(go (<! (c/post %)))
                   ["A" "B" "C" "D" "E"]
                   :interval 100))
  (<! (c/post "DONE")))
