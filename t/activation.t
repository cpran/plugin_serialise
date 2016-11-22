Create iris example: 0, 0
removeObject: selected("Categories")
pattern = selected("Pattern")
ffnet = selected("FFNet")

if praatVersion >= 6019
  id = To ActivationList: 1
else
  id = To Activation: 1
endif

removeObject: pattern, ffnet

runScript: "tester.praat"

removeObject: id
