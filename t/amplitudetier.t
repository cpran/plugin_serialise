f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 3 / f, 44100, "1/2 * sin(2*pi*f*x)"
intensity = To Intensity: 1000, 0, "yes"
tier = Down to IntensityTier
id = To AmplitudeTier
removeObject: sound, intensity, tier
selectObject: id

runScript: "tester.praat"

removeObject: id
