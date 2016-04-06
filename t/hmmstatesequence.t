hmm = Create HMM: "hmm", "no", 3, 3
nocheck To HMM_ObservationSequence: 0, 20
if !index(extractWord$(selected$(), ""), "ObservationSequence")
  nocheck To HMMObservationSequence: 0, 20
endif
minusObject: hmm
obs = selected()

selectObject: hmm, obs
nocheck To HMM_StateSequence
if !index(extractWord$(selected$(), ""), "StateSequence")
  nocheck To HMMStateSequence
endif
minusObject: hmm, obs
id = selected()
removeObject: hmm, obs

runScript: "tester.praat"

removeObject: id
