f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 7 / f, 44100, "1/2 * sin(2*pi*f*x)"
id = To Formant (burg): 0, 5, 5500, 0.025, 50
removeObject: sound

runScript: "tester.praat"

removeObject: id
