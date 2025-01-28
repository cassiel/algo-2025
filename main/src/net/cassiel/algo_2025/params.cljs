(ns net.cassiel.algo-2025.params
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.conformer :as cx]
            [net.cassiel.algo-2025.devices :as dev]
            [clojure.spec.alpha :as s]
            [cljs.core.async :as async :refer [<! >!]]
            [cljs.core.async.interop :refer [<p!]]
            [goog.string :as gstring]
            [goog.string.format]))

;; Map each parameter name to [ID value value-str] - value[-str] may be nil to start.
(s/def ::params (s/map-of keyword? (s/tuple integer?
                                            (s/nilable float?)
                                            (s/nilable keyword?))))
(s/def ::counter integer?)
(s/def ::device (s/keys :opt-un [::params ::counter]))
(s/def ::Microtonic ::device)
(s/def ::Axon_2 ::device)
(s/def ::Other_Desert_Cities ::device)
(s/def ::Enso.A ::device)
(s/def ::Enso.B ::device)
(s/def ::Rift ::device)
(s/def ::Replika_XT ::device)
(s/def ::param-tracking (s/keys :opt-un [::Microtonic ::Axon_2 ::Other_Desert_Cities
                                         ::Enso.A ::Enso.B ::Rift ::Replika_XT]))

(defn notes-on-octave [octave]
  (map (fn [s] (goog.string/format "%s%d" s octave))
       ["C" "C#" "D" "D#" "E" "F" "F#" "G" "G#" "A" "A#" "B"]))

(def named-notes (->> (map notes-on-octave (range -2 7))
                      flatten
                      (take (+ (* 8 12) 5))
                      (map keyword)))

(defn positions
  [pred coll]
  (seq (keep-indexed (fn [idx x] (when (pred x) idx))
                     coll)))

(defn map-value [device pname value-str]
  (when-let [vals (get-in dev/param-enums [device pname])]
    ;; A named value can be a vector of enum names, or a map from names to numerical values.
    (if (map? vals)
      (get vals value-str)
      (when-let [idx (positions #{value-str} vals)]
        (/ (first idx) (dec (count vals)))))))

(defn pitch [note-name]
  (when-some [idx (positions #{note-name} named-notes)]
    (first idx)))

(defn pname-in
  "Parameter message in. Clean up the possibly multi-part name, map to param ID
   with nil for numeric and string value."
  [PARAMS device & name-parts]
  (let [device-k (keyword device)
        pname (keyword (clojure.string/join "_" name-parts))
        P'
        (swap! PARAMS
               (fn [P]
                 (let [counter (or (get-in P [device-k :counter]) 0)
                       params (get-in P [device-k :params])]
                   (-> P
                       (assoc-in [device-k :counter] (inc counter))
                       (assoc-in [device-k :params pname] [(inc counter) nil nil])
                       #_ (as-> X
                           (cx/conformer ::param-tracking X))))))]

    ;; Filter_MINI has a huge number of "MIDI CC [...]" params. Don't try to get the
    ;; initial values, it'll cause trouble.
    (when-not (= (first name-parts) "MIDI")
      (.outlet c/max-api "now" device "get" (dec (get-in P' [device-k :counter]))))))

(defn lookup-param-name [param-map id]
  (let [map-seq (seq param-map)
        matches (filter (fn [[_ [id' _]]] (= id id')) map-seq)]
    (when-let [candidate (first matches)]
      (first candidate))))

(defn pvalue-in
  "Parameter value in by ID: update the parameter tracking data.
   Ignore if device or ID not (yet) known."
  [PARAMS device id value value-str]
  (println id value value-str)
  (let [kdevice (keyword device)]
    (swap! PARAMS
           (fn [P]
             (if-let [param-map (get-in P [kdevice :params])]
               (if-let [pname (lookup-param-name param-map id)]
                 (-> P
                     (assoc-in [kdevice :params pname] [id value (keyword value-str)])
                     #_ (as-> X (cx/conformer ::param-tracking X)))
                 P)
               P)))))

(defn request-params [PARAMS device]
  (swap! PARAMS dissoc device)
  (.outlet c/max-api "now" (name device) "params")
  (async/timeout 500))

(defn get-matching
  "All parameter names matching a regexp."
  [PARAMS device re]
  (let [data (deref PARAMS)
        params (get-in data [device :params])]
    (->> (keys params)
         (filter (comp (partial re-find re) name))
         sort                           ; Purely cosmetic
         (map (fn [p] [p (get params p)])))))

(defn get-matching-to-dict [PARAMS device re]
  (let [items (get-matching PARAMS device re)
        data (deref PARAMS)
        ;; (sorted-map) is cosmetic.
        json-obj (clj->js (into (sorted-map) items))]
    (go
      (<p! (.setDict c/max-api "X" json-obj))
      (.outlet c/max-api "show"))))

(defn xmit-program [dev i]
  (c/xmit :now (name dev) i)
  (async/timeout 1000))

(defn xmit-some-params-now [dev & args]
  (doseq [[pname v] args]
    (let [v' (if (keyword? v) (map-value dev pname v) v)]
      (if v' (do (c/xmit :now dev :param pname v')
                 (async/timeout 500))
          (do (c/error "Cannot map" dev pname ":" v)
              (async/timeout 0))))))

(defn axon-pitch-set [& values]
  (apply xmit-some-params-now
         :Axon
         (map-indexed (fn [i x] [(keyword (gstring/format "V%d_Pitch" i)) x])
                      values)))
