f = 440
sound = Create Sound from formula:
  ... "sound", 1, 0, 3 / f, 44100, "1/2 * sin(2*pi*f*x)"
id = To PowerCepstrogram: f, 0.002, 5000, 50
removeObject: sound

runScript: "tester.praat"

removeObject: id
