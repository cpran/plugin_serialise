f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 3 / f, 44100, "1/2 * sin(2*pi*f*x)"
table = To CrossCorrelationTable: 0, 10, 0
tables = To CrossCorrelationTables
id = To Diagonalizer: 100, 0.001, "ffdiag"
removeObject: table, tables, sound
selectObject: id

runScript: "tester.praat"

removeObject: id
