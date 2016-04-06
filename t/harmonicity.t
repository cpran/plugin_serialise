f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 3 / f, 44100, "1/2 * sin(2*pi*f*x)"
id = To Harmonicity (cc): 0.01, f, 0.1, 1
removeObject: sound

runScript: "tester.praat"

removeObject: id
