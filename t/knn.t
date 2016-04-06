Create iris example: 0, 0
removeObject: selected("FFNet")
pattern = selected("Pattern")
categories = selected("Categories")
id = To KNN Classifier: "Classifier", "Random"
removeObject: pattern, categories

runScript: "tester.praat"

removeObject: id
