f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 7 / f, 44100, "1/2 * sin(2*pi*f*x)"
id = To FormantFilter: 3 / f, 3 / f, 100, 50, 0, 1.1, 440, 600
removeObject: sound

runScript: "tester.praat"

removeObject: id
