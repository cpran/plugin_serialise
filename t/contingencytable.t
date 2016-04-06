t = Create TableOfReal (Weenink 1985): "Men"
tt = Extract row ranges: "1:10"
id = To ContingencyTable
removeObject: t, tt

runScript: "tester.praat"

removeObject: id
