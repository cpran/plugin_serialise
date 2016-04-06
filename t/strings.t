id = Create Strings as file list: "files",
  ... defaultDirectory$ + "/*"
assert do("Get number of strings")

runScript: "tester.praat"

removeObject: id
