a = Create Configuration: "a", 10, 2, "self*2"
b = Copy: "b"
selectObject: a, b
id = To Procrustes: 1
removeObject: a, b

runScript: "tester.praat"

removeObject: id
