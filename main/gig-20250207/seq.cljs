(ns user
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.state :as s]
            [net.cassiel.algo-2025.params :as px]
            [net.cassiel.algo-2025.sequencing :as seq]
            [net.cassiel.algo-2025.control :as ctrl]
            [net.cassiel.algo-2025.conformer :as cx]
            [cljs.core.async :as async :refer [put! chan <! >!]]
            [goog.string :as gstring]
            [goog.string.format]))

(reset! s/SEQ {:sequences {} :messages nil})

(defn row [pitch-offset positions]
  (map (fn [pos] [pos :Microtonic :note (+ 36 pitch-offset) 64 0]) positions))

(->> (reset! s/SEQ {:sequences (-> {:bs {1 (row 0 [0 0.5])
                                         3 (row 0 [0 0.75])
                                         4 (row 0 [0.25 0.5])}
                                    :ds {3 (row 1 [0 0.75])
                                         4 (row 1 [0 0.75])}
                                    :hh {2 (row 2 [0])
                                         4 (row 2 [0.25 0.75])}
                                    :sc {4 (row 3 [0.5])}
                                    :sd {1 (row 4 [])}
                                    :h2 {1 (row 5 [])}
                                    :ch {1 (row 6 [])}
                                    :rd {1 (row 7 [0.25])
                                         3 (row 7 [0.75])}
                                     }
                                   #_ (dissoc :ds)
                                   #_ (dissoc :hh)
                                   #_ (dissoc :sc)
                                   #_ (dissoc :sd)
                                   #_ (dissoc :hh2)
                                   #_ (dissoc :ch)
                                   #_ (dissoc :rd)
                                   )
                    :messages nil})
     (cx/conformer ::seq/sequencer-state))


(->> (reset! s/SEQ {:sequences {:main {1 [[0 :Microtonic :note (+ 36 7) 40 100]]
                                       3 [[0 :Microtonic :note (+ 36 7) 64 100]
                                          [0.5 :Microtonic :note (+ 36 7) 64 100]]
                                       4 [[0 :Microtonic :note (+ 36 7) 64 100]]}}
                    :messages nil})
     (cx/conformer ::seq/sequencer-state))
