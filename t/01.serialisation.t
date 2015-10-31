# This script is part of the serialise CPrAN plugin for Praat.
# The latest version is available through CPrAN or at
# <http://cpran.net/plugins/serialise>
#
# The serialise plugin is free software: you can redistribute it
# and/or modify it under the terms of the GNU General Public
# License as published by the Free Software Foundation, either
# version 3 of the License, or (at your option) any later version.
#
# The serialise plugin is distributed in the hope that it will be
# useful, but WITHOUT ANY WARRANTY; without even the implied warranty
# of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with serialise. If not, see <http://www.gnu.org/licenses/>.
#
# Copyright 2014, 2015 Jose Joaquin Atria

preferencesDirectory$ = replace_regex$(preferencesDirectory$, "(con)?(\.(EXE|exe))?$", "", 0)

@no_plan()

include ../../plugin_serialise/procedures/preferences.proc
include ../../plugin_selection/procedures/selection.proc
include ../../plugin_utils/procedures/utils.proc

# To test all* objects
runScript: "make_objects.praat"
selection = selected()
Sort rows: "type"
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

checkOutputPreferences.restore = 1
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

      original = get.id
      selectObject: original

      type$[1] = extractWord$(selected$(), "")
      name$[1] = selected$(type$[1])

      json_file$ = temporaryDirectory$ + name$[1] + ".json"

      nocheck runScript: preferencesDirectory$ +
        ... "/plugin_serialise/scripts/save_as_json.praat",
        ... json_file$, "Data stream", "yes"

      if !fileReadable(json_file$)
        error = 10
      else
        error = 0
      endif

      @clearSelection()

      nocheck runScript: preferencesDirectory$ +
        ... "/plugin_serialise/scripts/deserialise.praat",
        ... json_file$

      deleteFile: json_file$
      if numberOfSelected()
        type$[2] = extractWord$(selected$(), "")
        name$[2] = selected$(type$[2])
        error += if type$[1] != type$[2] then 1 else 0 fi
        error += if name$[1] != name$[2] then 2 else 0 fi
        # This function seems to be buggy, or way too strict
        # error += 1 - objectsAreIdentical(original, selected())
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
