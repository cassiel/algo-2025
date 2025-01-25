(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.farm-2019.core :as c]
            [net.cassiel.farm-2019.params :as px]
            [net.cassiel.farm-2019.sequencing :as seq]
            [net.cassiel.farm-2019.conformer :as cx]
            [cljs-promises.core :as p]
            [cljs-promises.async :as a :refer-macros [<?]]
            [cljs.core.async :refer [put! chan <!]]
            [clojure.spec.alpha :as s]
            [spectacles.lenses :as lens]))

(go
  (<? (.setDict c/max-api "X" #js {}))
  (.outlet c/max-api "show"))

(go
  (let [pp (-> c/max-api (.getDict "X"))]
    (try
      (.post c/max-api (<? pp))
      (catch js/Error e
        (.post c/max-api (str "Error: " (ex-message e)))))
    ))

(cx/conformer ::seq/sequencer-state
              {:sequences {:main-seq [{:at 2 :do [[0 "FIRST"]
                                                  [0.25 "A" 25 "B" 0.5]]}]}
               :messages nil})

(def A (atom {}))

(reset! A {:sequences {} :messages nil})

(swap! A (fn [a] (-> a
                     (update-in [:sequences :main] #(conj % {:at 2 :do [[0.25 "TEST2"]]}))
                     (update-in [:sequences :sub] #(conj % {:at 2 :do [[0 "SUB"]
                                                       [0.5 "SUB2"]]}))
                     (update-in [:sequences :other] #(conj %  {:at 3 :do [[0 "A"]]}))
                     ;;(as-> x (cx/conformer ::seq/sequencer-state x))
                     ))  )

(do
  (reset! A {:sequences {:main (cycle [{:at 1 :do [[0 "basic" "note" 48 64 100]]}
                                       {:at 2 :do [[0 "basic" "note" 60 64 100]
                                                   [0.5 "basic" "note" 60 40 100]]}
                                       {:at 3 :do [[0 "basic" "note" 67 64 100]
                                                   [0.5 "basic" "note" 60 40 100]]}
                                       {:at 4 :do [[0 "basic" "note" 72 64 100]
                                                   [0.25 "basic" "note" 70 40 100]]}
                                       ])}
             :messages nil})
  "OK")


(-> (deref A)
    (lens/get-in [::seq/sequencer-state :sequences :main])
    first
    (lens/get-in [::seq/seq-entry :do]))

(= (s/conform ::seq/sequencer-state (deref A))
   ::s/invalid)


(s/conform ::seq/sequencer-state (deref A))

(s/explain-data ::seq/sequencer-state (deref A))

(deref A)

#_ (defn process-step [pos]
  (let [[items state' ]])
  )

(seq/process-request (deref A) 2)

(letfn [(maybe-purge-head [items]
          (when (seq items)
            (if (= (:at (first items)) 2)
              (next items)
              items)))]
  (->> (seq (deref A))
       (map (fn [[name items]]
              [name (maybe-purge-head items)]))
       (into {})))

(first (seq (deref A)))




(defn var-outlet
  ([a] (.outlet c/max-api a))
  ([a b] (.outlet c/max-api a b))
  ([a b c] (.outlet c/max-api a b c))
  ([a b c d] (.outlet c/max-api a b c d))
  ([a b c d e] (.outlet c/max-api a b c d e))
  ([a b c d e f] (.outlet c/max-api a b c d e f))
  ([a b c d e f g] (.outlet c/max-api a b c d e f g))
  ([a b c d e f g h] (.outlet c/max-api a b c d e f g h))
  ([a b c d e f g h i] (.outlet c/max-api a b c d e f g h i)))

;; Messages out to Max:
;; "win" [name] [1/0]: open or close named window (audio, basic, enso)
;; "now" [...m...]: output message
;; "seq" "add" "main" [pos] [...m...]: schedule message

;; Messages [...m...]:
;; [device] "note" [p] [v] [d]: MIDI note with duration
;; [device] "param" [name/id] [val]: parameter change
;; [device] "params": request parameter names


(doto c/max-api
  (.removeHandlers "request")
  (.addHandler "request"
               (fn [pos]
                 (let [{:keys [messages]} (swap! A seq/process-request pos)]
                   (doseq [x messages]
                     (apply var-outlet "seq" "add" "main" x)))))

  ;; Parameter names in so that we can store them.
  (.removeHandlers "param")
  (.addHandler "param" px/param-in)

  )


(defn window [item how]
  (.outlet c/max-api "win" item how)
  )

(clojure.string/join "," [1,2,3])

(window "seq" 1)
(window "enso" 1)
(window "basic" 0)
(window "audio" 1)

(deref px/param-tracking)
(px/reset-param-tracking!)
(px/request-params "basic")
(px/request-params "enso")

(px/get-matching "basic" #"Flt")

(px/param-in "basic" "Filter" "Thing")



(go
  (let [pp (<? (.setDict c/max-api "X" (clj->js {:Q (range 3)
                                                 :R (range 10)})))]
    (.outlet c/max-api "show")
    ))

(go
  (let [pp (<? (.updateDict c/max-api "X" "A2" (clj->js (range 3))))]
    (.outlet c/max-api "show")
    ))

(go
  (let [pp (<? (-> c/max-api (.getDict "X")))
        pp' (-> pp
                (js->clj :keywordize-keys true)
                (assoc :H "HELLO"
                       :W "WORLD")
                (update :Q (partial map inc))
                clj->js)]
    (try
      (.post c/max-api pp)
      (.post c/max-api pp')
      (<? (.setDict c/max-api "X" pp'))
      (catch js/Error e
        (.post c/max-api (str "Error: " (ex-message e)))))
    (.outlet c/max-api "show")))

(go
  (let [pp  (<? (-> c/max-api (.getDict "X")))
        pp' (-> pp
                (js->clj :keywordize-keys true)
                (update :H #(str "." %))
                (update :W #(str % "."))
                (update :Q (partial map inc))
                (update :R (partial map  #(* (rand) 10)))
                (assoc :D (str (js/Date.)))
                clj->js)]
    (try
      (<? (.setDict c/max-api "X" pp'))
      (catch js/Error e
        (.post c/max-api (str "Error: " (ex-message e)))))
    (.outlet c/max-api "show")))
