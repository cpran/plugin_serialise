f = 440
sound = Create Sound from formula:
  ... "sound", 1, 0, 3 / f, 44100, "1/2 * sin(2*pi*f*x)"
pc = To PowerCepstrogram: f, 0.002, 5000, 50
id = To PowerCepstrum (slice): 0.1
removeObject: sound, pc

runScript: "tester.praat"

removeObject: id
