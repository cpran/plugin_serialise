f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 3 / f, 44100, "1/2 * sin(2*pi*f*x)"
id = To Ltas: 1000
removeObject: sound

runScript: "tester.praat"

removeObject: id
