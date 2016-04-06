covar = Create simple Covariance: "c", "1.0 0.0 1.0", "0.0 0.0", 100
id = To PCA
removeObject: covar

runScript: "tester.praat"

removeObject: id
