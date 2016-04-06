f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 3 / f, 44100, "1/2 * sin(2*pi*f*x)"
pitch = To Pitch: 0, f, f*2
id = Down to PitchTier
removeObject: pitch, sound
selectObject: id

runScript: "tester.praat"

removeObject: id
