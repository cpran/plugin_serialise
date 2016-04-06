t = Create TableOfReal (Weenink 1985): "Men"
tt = Extract row ranges: "1:10"
id = To SSCP: 1, 10, 1, 3
removeObject: t, tt

runScript: "tester.praat"

removeObject: id
