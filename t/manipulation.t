f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 3 / f, 44100, "1/2 * sin(2*pi*f*x)"
id = To Manipulation: 0.01, f, f * 2
removeObject: sound

runScript: "tester.praat"

removeObject: id
