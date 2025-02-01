(ns net.cassiel.algo-2025.devices
  (:require [goog.string :as gstring]
            [goog.string.format]))

(defn- symbolic-range
  "Inclusive range. `0` is `:0`, all others are signed `+n` or `-n`."
  [f t]
  (letfn [(as-str [n] (if (> n 0)
                        (gstring/format "+%d" n)
                        (gstring/format "%d" n)))]
    (vec (map (comp keyword as-str) (range f (inc t))))))

(def param-enums
  (let [enso       (let [speeds {:-2.0 0.574349164962769
                                 :-1.0 0.675480008125305
                                 :-0.5 0.718441188335419
                                 :+0.5 0.794417858123779
                                 :+1.0 0.828613519668579
                                 :+2.0 0.891301214694977}]
                     {:Mode        [:Record :Overdub :Play :Stop]
                      :Link_Speeds [:Off :On]
                      :Play_Speed  speeds
                      :Rec_Speed   speeds})
        replika-xt {:Modulation_Mode [:No_FX :Phaser :Flanger
                                      :Chorus :Freq_Shifter
                                      :Filter :Pitch_Shifter
                                      :Micro_Pitcher]
                    :Delay_Mode      [:Modern :Analogue :Tape_Echo
                                      :Vintage_Digital :Diffusion]
                    :PS_Shift_L      (symbolic-range -12 12)
                    :PS_Shift_R      (symbolic-range -12 12)
                    :Time_Mode       [:Straight :Dotted :Triplets :Milliseconds]}
        ;; Basic is obsolete:
        basic      (let [shapes [:Triangle :Sawtooth :DigiGrit
                                 :20%Pulse :Square :80%Pulse]]
                     {:Osc1Shap shapes
                      :Osc2Shap shapes
                      :Osc3Shap shapes})
        ;; Axon is obsolete - but possibly same for Axon_2.
        axon       (->> (map (fn [i] [(keyword (gstring/format  "V%d_Pitch" i))
                                      named-notes])
                             (range 7))
                        (into {:ClockRat [:32 :16 :8]}))
        ods        (let [times [:1.32 :1.16T :1.16 :1.8T :1.16D :1.8
                                :1.4T :1.8D :1.4 :1.2T :1.4D :1.2
                                :1.1T :1.2D :1.1 :2.1T :1.1D :2.1]]
                     {:Algorithm [:Desert_Shores :Mecca :Cactus :Thermal :Mirage :Sky_Valley]
                      :Loop [:Off :On]
                      :Time_1 times
                      :Time_2 times})
        ]
    {:Replika_XT          replika-xt
     :Enso.A              enso
     :Enso.B              enso
     :Basic               basic
     :Axon                axon
     :Other_Desert_Cities ods}))
