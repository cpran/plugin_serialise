f = 440
sound = Create Sound from formula: "test",
  ... 1, 0, 3 / f, 44100, "1/2 * sin(2*pi*f*x)"
table = To CrossCorrelationTable: 0, 10, 0
tables = To CrossCorrelationTables
diag = To Diagonalizer: 100, 0.001, "ffdiag"
id = To MixingMatrix
removeObject: diag, table, tables, sound
selectObject: id

runScript: "tester.praat"

removeObject: id
