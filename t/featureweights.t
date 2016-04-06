Create iris example: 0, 0
removeObject: selected("FFNet")
pattern = selected("Pattern")
categories = selected("Categories")
knn = To KNN Classifier: "Classifier", "Random"
plusObject: pattern, categories
id = To FeatureWeights: 0.02, 20, 1, "Co-optimization", 1, "Flat"
removeObject: pattern, categories, knn

runScript: "tester.praat"

removeObject: id
