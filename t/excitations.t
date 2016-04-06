t = Create TableOfReal (Weenink 1985): "Men"
tt = Extract row ranges: "1:10"
matrix = To Matrix
excitation = To Excitation
id = To Excitations
removeObject: t, tt, matrix, excitation

runScript: "tester.praat"

removeObject: id
