t = Create TableOfReal (Pols 1973): "no"
tt = Extract row ranges: "1:10"
id = To Table: "rowLabel"
removeObject: t, tt

runScript: "tester.praat"

removeObject: id
