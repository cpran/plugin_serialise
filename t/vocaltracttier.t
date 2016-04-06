art = Create Articulation: "articulation"
speaker = Create Speaker: "speaker", "Female", "2"
selectObject: art, speaker
tract = To VocalTract
id = To VocalTractTier: 0, 1, 0.5
removeObject: art, speaker, tract

runScript: "tester.praat"

removeObject: id
