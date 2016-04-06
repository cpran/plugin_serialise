f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 3 / f, 44100, "1/2 * sin(2*pi*f*x)"
id = To Spectrogram: 3 / f / 2, 5000, 0.002, 20, "Gaussian"
removeObject: sound

runScript: "tester.praat"

removeObject: id
