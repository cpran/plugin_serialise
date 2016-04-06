covar = Create simple Covariance: "c", "1.0 0.0 1.0", "0.0 0.0", 100
id = To Correlation
removeObject: covar

runScript: "tester.praat"

removeObject: id
