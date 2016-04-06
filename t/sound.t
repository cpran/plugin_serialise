f = 440
id = Create Sound from formula: "test",
  ... 1, 0, 1 / f, 44100, "1/2 * sin(2*pi*f*x)"

runScript: "tester.praat"

removeObject: id
