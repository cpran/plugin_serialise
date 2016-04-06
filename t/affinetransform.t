a = Create Configuration: "a", 10, 2, "self*2"
b = Copy: "b"
selectObject: a, b
id = To AffineTransform (congruence): 50, 1e-6
removeObject: a, b

runScript: "tester.praat"

removeObject: id
