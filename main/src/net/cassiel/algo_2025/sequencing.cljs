(ns net.cassiel.algo-2025.sequencing
  (:require [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.conformer :as cx]
            [clojure.spec.alpha :as s]))

;; Sequencer prompts just come in as repeated counts of 1..4. For each
;; one, return a list (doesn't need to be ordered) of
;; [pos & tokens] where pos is floating point from count (incl.) to
;; count+1 (excl.) - this goes straight into seq~.

(s/def ::token (s/or :symbol keyword?
                     :number number?))
(s/def ::offset (s/and number? #(>= % 0.0) #(< % 1.0)))

(s/def ::msg-cue (s/cat :offset ::offset
                        :message (s/+ ::token)))

(s/def ::cue (s/or :msg ::msg-cue
                   :fn fn?))

;; A sequence of cue is filed against a beat
;; (ADDITION: we can also file a sequences->sequences function against a beat):

(s/def ::cues-in-beat (s/coll-of ::cue))

;; A map of these indexed by beat number is a sequence block:

(s/def ::beat (s/and integer? #(>= % 1) #(<= % 4)))
(s/def ::seq-block (s/map-of ::beat ::cues-in-beat))

;; Overall sequencer content: map from names to sequence block. (The
;; names have no significance other than to allow
;; sequences to be individually manipulated.)

(s/def ::sequences (s/map-of keyword? ::seq-block))

;; Actually, overall sequencer state is a map with :sequences and :messages,
;; so that we can do a swap! and get out the incremental output items
;; afterwards.

(s/def ::messages (s/* ::token))

(s/def ::sequencer-state (s/keys :req-un [::sequences ::messages]))

;; Transmit messages for a particular request position (1..4).

(defn process-request
  "Takes state * pos, returns state' incorporating messages."
  [{:keys [sequences] :as state} pos]
  (let [beat-maps (map fnext (seq sequences))
        ;; Discard the block names; each of these items is a map: 1..4 (beat) -> seq-block.

        ;; All of the cues at this beat. A cue is either a sequence whose first element
        ;; is a float from 0.0 incl. to 1.0 excl., or a function to apply to the entire
        ;; sequence memory to mutate it.
        cues-at-this-pos (reduce concat (map #(get % pos) beat-maps))
        message-cues     (filter #(not (fn? %)) cues-at-this-pos)
        fn-cues          (filter fn? cues-at-this-pos)
        ;; Vectorise if needed; add pos to each of the fractional offsets:
        process-cue      #(update (vec %) 0 + pos)
        ;; Allow usage of note names as well as pitch numbers for non-fn cues:
        patch-note       (fn [cue]
                           (let [cue' (vec cue)]
                              (if (and (= (nth cue' 2) :note)
                                       (keyword? (nth cue' 3)))
                                (update cue' 3 px/pitch)
                                cue)))
        ;; messages are just seqs of cues with fixed-up beat/offset locations:
        messages         (map (comp process-cue patch-note) message-cues)

        ;; Apply all function cues (order not defined). Skip on empty list of functions, since
        ;; the validation seems expensive to do on each beat.
        #_ sequences' #_ (if (seq fn-cues)
                     (cx/conformer ::sequences (reduce (fn [s f] (f s)) sequences fn-cues))
                     sequences)

        sequences' (reduce (fn [s f] (f s)) sequences fn-cues)]
    (println messages)
    (assoc state
           :sequences sequences'
           :messages messages)))
