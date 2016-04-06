id = Create TextGrid: 0, 2, "interval points", "points"
total = 4
chars$ = "ɕɣ4a%sðH"
nocheck Set interval text: 1, 1, mid$(chars$, 1, 1)
for i to total
  nocheck Insert boundary: 1, 1/i
  nocheck Insert point: 2, 1/i, mid$(chars$, i, 1)
  nocheck Set interval text: 1, 2, mid$(chars$, i, 1)
endfor

runScript: "tester.praat"

removeObject: id
