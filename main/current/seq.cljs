(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as state]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

(reset! state/SEQ {:sequences {} :messages nil})

(ctrl/window :Microtonic 0)

(letfn [(row [pitch positions]
          (map (fn [pos] [pos :Microtonic :note pitch 64 0]) positions))]
  (->> (reset! state/SEQ {:sequences (-> {:b0 {1 (row :C1 [0 0.5])
                                               2 (row :C1 [0.5])
                                               3 (row :C1 [0 0.75])
                                               4 (row :C1 [0])}
                                          :bs {1 (row :C1 [0 0.25 0.5])
                                               3 (row :C1 [0.5])}
                                          :ds {1 (row :C#1 [0 0.75])
                                               4 (row :C#1 [0 0.75])}
                                          :hh {2 (row :D1 [0])
                                               4 (row :D1 [0 0.75])}
                                          :sc {2 (row :D#1 [0 0.5])
                                               3 (row :D#1 [0])
                                               4 (row :D#1 [0.5 0.625 0.75 0.875])}
                                          :sd {1 (row :E1 [])}
                                          :h2 {1 (row :F1 [0.25])
                                               3 (row :F1 [0.5 0.75])}
                                          :ch {1 (row :F#1 [0])
                                               3 (row :F#1 [0])}
                                          :rd {1 (row :G1 [0.25])
                                               3 (row :G1 [0.75])}

                                          }
                                         #_ (dissoc :b0)
                                         (dissoc :bs)
                                         #_ (dissoc :ds)
                                         #_ (dissoc :hh)
                                         #_ (dissoc :sc)
                                         #_ (dissoc :sd)
                                         #_ (dissoc :h2)
                                         #_ (dissoc :ch)
                                         #_ (dissoc :rd)
                                         )
                          :messages nil})
     (cx/conformer ::seq/sequencer-state))  )


(->> (reset! state/SEQ {:sequences {:main {1 [[0 :Microtonic :note :C1 40 100]]
                                           3 [[0 :Microtonic :note :C#1 64 100]
                                              [0.5 :Microtonic :note :D#1 64 100]]
                                           4 [[0 :Microtonic :note :D#1 64 100]
                                              [0.75 :Microtonic :note :C1 40 100]]}}
                        :messages  nil})
     (cx/conformer ::seq/sequencer-state))
