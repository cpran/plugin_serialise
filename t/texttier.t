f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 3 / f, 44100, "1/2 * sin(2*pi*f*x)"
points = To PointProcess (periodic, cc): f, 600
id = Up to TextTier: "a"
removeObject: sound, points
selectObject: id

runScript: "tester.praat"

removeObject: id
