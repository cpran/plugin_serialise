strings = Create Strings as file list: "files",
  ... defaultDirectory$ + "/*"
id = To WordList
removeObject: strings

runScript: "tester.praat"

removeObject: id
