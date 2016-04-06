f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 3 / f, 44100, "1/2 * sin(2*pi*f*x)"
table = To CrossCorrelationTable: 0, 10, 0
id = To CrossCorrelationTables
removeObject: table, sound
selectObject: id

runScript: "tester.praat"

removeObject: id
