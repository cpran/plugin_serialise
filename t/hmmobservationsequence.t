hmm = Create HMM: "hmm", "no", 3, 3
nocheck To HMM_ObservationSequence: 0, 20
if !index(extractWord$(selected$(), ""), "ObservationSequence")
  nocheck To HMMObservationSequence: 0, 20
endif
minusObject: hmm
id = selected()
removeObject: hmm

runScript: "tester.praat"

removeObject: id
