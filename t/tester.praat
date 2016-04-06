include ../../plugin_testsimple/procedures/test_simple.proc
include ../../plugin_serialise/procedures/preferences.proc
include ../../plugin_utils/procedures/utils.proc

@no_plan()

@normalPrefDir()

@mktemp("testserial.XXXXX")
temporaryDirectory$ = mktemp.name$

checkOutputPreferences.restore = 1
@saveOutputPreferences()
Text writing preferences: "UTF-8"

original = selected()
type$ = extractWord$(selected$(), "")
json_file$ = temporaryDirectory$ + type$ + ".json"

# Mark known-to-fail objects as TODO
if    type$ == "Art"       or
  ... type$ == "Artword"   or
  ... type$ == "HMM"       or
  ... type$ == "KNN"       or
  ... type$ == "OTGrammar"

  @todo(2, type$ + " not currently supported")
endif

# See https://gitlab.com/cpran/plugin_serialise/issues/4
if type$ == "FFNet" and praatVersion >= 6001 and praatVersion < 6004
  @skip(2, type$ + " objects unsupported in Praat v" + praatVersion$)
endif

nocheck runScript: preferencesDirectory$ +
  ... "/plugin_serialise/scripts/save_as_json.praat",
  ... json_file$, "Data stream", "yes"

@ok: fileReadable(json_file$),
  ... "Wrote file"

nocheck selectObject: undefined
nocheck runScript: preferencesDirectory$ +
  ... "/plugin_serialise/scripts/deserialise.praat",
  ... json_file$

# Read might have failed, there might not be a selection
read = 0
if numberOfSelected()
  new = selected()
  if type$ == "KlattGrid"
    # objectsAreIdentical is too stringent for KlattGrid?
    @klattgridsAreIdentical: original, new
    read = klattgridsAreIdentical.return
    selectObject: new
  else
    read = objectsAreIdentical(original, new)
  endif
endif

@ok: read, "Read file"

deleteFile: json_file$
deleteFile: temporaryDirectory$

@ok: !fileReadable(temporaryDirectory$),
  ... "Deleted temporary directory"

# Make sure not to remove the original
nocheck minusObject: original
nocheck Remove

@ok_selection()

@done_testing()

@restoreOutputPreferences()

procedure klattgridsAreIdentical: .a, .b
  selectObject: .a, .b
  Extract oral formant grid
  .return = objectsAreIdentical(selected(1), selected(2))
  Remove

  selectObject: .a, .b
  Extract nasal formant grid
  .return = .return and objectsAreIdentical(selected(1), selected(2))
  Remove

  selectObject: .a, .b
  Extract tracheal formant grid
  .return = .return and objectsAreIdentical(selected(1), selected(2))
  Remove

  selectObject: .a, .b
  Extract frication formant grid
  .return = .return and objectsAreIdentical(selected(1), selected(2))
  Remove

  selectObject: .a, .b
  Extract delta formant grid
  .return = .return and objectsAreIdentical(selected(1), selected(2))
  Remove

  selectObject: .a, .b
  Extract pitch tier
  .return = .return and objectsAreIdentical(selected(1), selected(2))
  Remove

  selectObject: .a, .b
  Extract aspiration amplitude tier
  .return = .return and objectsAreIdentical(selected(1), selected(2))
  Remove
endproc
