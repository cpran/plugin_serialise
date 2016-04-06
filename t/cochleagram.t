f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 18 / f, 44100, "1/2 * sin(2*pi*f*x)"
id = To Cochleagram: 0.01, 0.1, 0.03, 0.03
removeObject: sound

runScript: "tester.praat"

removeObject: id
