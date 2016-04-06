f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 7 / f, 44100, "1/2 * sin(2*pi*f*x)"
id = To LPC (burg): 16, 0.025, 0.005, 50
removeObject: sound

runScript: "tester.praat"

removeObject: id
