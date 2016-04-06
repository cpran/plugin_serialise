file = Create FileInMemory: defaultDirectory$ + "/fileinmemory.t"
id = To FilesInMemory
removeObject: file

runScript: "tester.praat"

removeObject: id
