t = Create TableOfReal (Weenink 1985): "Men"
tt = Extract row ranges: "1:10"
matrix = To Matrix
id = To Excitation
removeObject: t, tt, matrix

runScript: "tester.praat"

removeObject: id
