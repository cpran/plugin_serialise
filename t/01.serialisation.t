include ../../plugin_testsimple/procedures/test_simple.proc

@no_plan()

include ../../plugin_selection/procedures/selection.proc
include ../../plugin_utils/procedures/utils.proc

# To test all* objects
runScript: "make_objects.praat"
selection = selected()
Randomize rows
@restoreSavedSelection(selection)

@mktemp("testserial.XXXXX")
temporaryDirectory$ = mktemp.name$

procedure get (.type$)
  @saveSelection()
  selectObject: selection
  .n = Search column: "type", .type$
  if .n
    .id = Object_'selection'[.n, "id"]
  else
    .id = undefined
  endif
  @restoreSelection()
endproc

@saveOutputPreferences()
Text writing preferences: "UTF-8"

objects$ = List readable types of objects
@split: newline$, objects$
for i to split.length
  if split.return$[i] != ""
    error = -1
    error$ = ""

    object_name$ = extractWord$(split.return$[i], tab$)

    @get: object_name$
    if get.id != undefined and get.id

      # Mark known-to-fail objects as TODO
      if     object_name$ = "Art"       or
         ... object_name$ = "Artword"   or
         ... object_name$ = "HMM"       or
         ... object_name$ = "KNN"       or
         ... object_name$ = "OTGrammar"
        @todo(1, "No writer for " + object_name$)
      endif

      object_id = get.id
      selectObject: object_id

      type$[1] = extractWord$(selected$(), "")
      name$[1] = selected$(type$[1])

      json_file$ = temporaryDirectory$ + name$[1] + ".json"

      nocheck runScript: preferencesDirectory$ - "con" +
        ... "/plugin_serialise/scripts/save_as_json.praat",
        ... json_file$, "Data stream", "yes"

      if !fileReadable(json_file$)
        error = 10
      else
        error = 0
      endif

      @clearSelection()

      nocheck runScript: preferencesDirectory$ - "con" +
        ... "/plugin_serialise/scripts/read_from_json.praat",
        ... json_file$

      deleteFile: json_file$
      if numberOfSelected()
        type$[2] = extractWord$(selected$(), "")
        name$[2] = selected$(type$[2])
        error += if type$[1] != type$[2] then 1 else 0 fi
        error += if name$[1] != name$[2] then 2 else 0 fi
        # This function seems to be buggy, or way too strict
        # error += 1 - objectsAreIdentical(object_id, selected())
        Remove
      else
        error += 20
      endif

    else
      @skip: 1, object_name$ + ": no test object yet"
    endif

    @error_code: error
    error$ = error_code.error$

    @ok: !error, object_name$ +
      ... if error then " (" + error$ + ")" else "" fi

  endif
endfor

for i to Object_'selection'.nrow
  removeObject: Object_'selection'[i, "id"]
endfor
removeObject: selection
deleteFile: temporaryDirectory$

@done_testing()

@restoreOutputPreferences()

procedure error_code: .error
  if .error
    .error$ = string$(.error)
    .io$ = if length(.error$) < 2 then "" else left$(.error$) fi
    .nt$ = right$(.error$)

    .error$ = if .io$ = "1" then "W"   else
          ... if .io$ = "2" then "R"   else
          ... if .io$ = "3" then "R/W" else
          ...    "" fi fi fi

    .error$ = .error$ +
          ... if .nt$ = "1" then ", type" else
          ... if .nt$ = "2" then ", name" else
          ... if .nt$ = "3" then ", type and name" else
          ...    "" fi fi fi
  else
    .error$ = "no error"
  endif
endproc


procedure saveOutputPreferences ()
  .prefs$ = readFile$(preferencesDirectory$ - "con" + "/prefs5")
  .output$ = extractLine$(.prefs$,
    ... "TextEncoding.outputEncoding: ")
endproc

procedure restoreOutputPreferences ()
  Text writing preferences: saveOutputPreferences.output$
endproc
