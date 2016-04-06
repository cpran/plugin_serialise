art = Create Articulation: "articulation"
speaker = Create Speaker: "speaker", "Female", "2"
selectObject: art, speaker
id = To VocalTract
removeObject: art, speaker

runScript: "tester.praat"

removeObject: id
