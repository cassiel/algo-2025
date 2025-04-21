(ns net.cassiel.algo-2025.control
  "General control routines: windows, unload/reload, ..."
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [net.cassiel.algo-2025.devices :as dev]
            [net.cassiel.algo-2025.core :as c]
            [net.cassiel.algo-2025.params :as px]
            [cljs.core.async :as async :refer [<! >!]]))

(def win-state (atom {}))

(defn window
  ([item how]
   (c/xmit :win item how))

  ([item]
   (window item (-> (swap! win-state update item #(- 1 (or % 0)))
                    (get item)))))

(defn plug-device
  "Plug or unplug a device. Return a channel which can be read when the
   plug has had time to settle. (That allows us to chain parameter
   change requests.)"
  [device how]
  ;; NOTE: this seems to grab app focus back to Max (at least for NI plugs).
  (c/xmit :now device :plugged how)
  (async/timeout 1000))

(defn ^:deprecated restore
  "Snapshop restore. have to use index, so only really reliable if we only have one (#0).
   DEPRECATED - not reliable - using VST preset files instead."
  [device i]
  (go
    (c/xmit :now device :restore i)
    (<! (async/timeout 500))))

(defn read
  "Read a preset file into a VST instance. Returns a channel which pauses on read."
  [device filename]
  (go
    (c/xmit :now device :read filename)
    (<! (async/timeout 500))))

(defn makenote
  "Simple note on/off, immediate."
  [device pitch]
  (c/xmit :now device :note pitch 64 100))

(defn reset-device
  [device]
  (go (<! (plug-device device 0))
      (<! (plug-device device 1))))

(defn unload-all
  "Utility to unload all VSTs: useful before saving Max patcher, to save space."
  [devices]
  (when-let [[d & ds] devices]
    (let [c (plug-device d 0)]
      (go (<! c)
          (unload-all ds)))))

(defn mix
  ([f t level secs]
   (let [f' (if (= f :*) dev/channel-names f)
         t' (if (= t :*) dev/channel-names t)]
     (cond
       (seqable? f')
       (doseq [f1 f'] (mix f1 t level secs))

       (seqable? t')
       (doseq [t1 t'] (mix f t1 level secs))

       :else
       (when-first [fc (px/positions #{f} dev/channel-names)]
         (when-first [tc (px/positions #{t} dev/channel-names)]
           (c/xmit :now :mix :set fc tc level secs))))))

  ([f t level] (mix f t level 0)))

(defn master
  ([level secs]
   (c/xmit :master level secs))

  ([level]
   (master level 0.0))
  )

(defn mute-all
  ([secs] (mix :* :* -40 secs))
  ([] (mute-all 0)))

(defn handle [& cmd-f-map]
  (doseq [[cmd f] (partition 2 cmd-f-map)]
    (let [cmd' (name cmd)]
      ;;(println "Handle" cmd')
      (doto c/max-api
        (.removeHandlers cmd')
        (.addHandler cmd' f)))))
