# Praat object serialiser
# This version is _much_ simpler, and _much_ more robust but it
# does require Perl.
#
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

include ../../plugin_utils/procedures/utils.proc
include ../../plugin_utils/procedures/try.proc
include ../../plugin_utils/procedures/check_filename.proc
include ../../plugin_selection/procedures/selection.proc
include ../../plugin_serialise/procedures/preferences.proc

@normalPrefDir()

form Save as serialised text file...
  sentence Save_as
  optionmenu Output: 1
    option JSON
    option YAML
  optionmenu Format: 1
    option Data stream
    option Collection
  boolean Pretty_printed yes

  comment This command requires Perl
  comment If saving multiple objects with the same name, save as Collection
endform

# Make sure text-writing preferences are set correctly
@checkOutputPreferences()

# Save original selection
@saveSelectionTable()
original_selection = saveSelectionTable.table

# De-select all incompatible objects
@minusTypes("LongSound")

# Set initial options:
@toLower(output$)
output$ = toLower.return$
# Should output maintain Collection structure?
collection = if format$ = "Collection" then 1 else 0 fi
# Should output be pretty-printed?
format$ = if pretty_printed then "pretty" else "minified" fi

# Prepare for writing
# Generate filename for Praat serialisation

if numberOfSelected() = 1
  type$ = extractWord$(selected$(), "")
  name$ = selected$(type$)
  infile$ = name$ + "." + type$

  # Generate output filename
  @toLower(type$)
  outfile$ = name$ + "_" + toLower.return$ + "." + output$
elsif numberOfSelected() > 1
  infile$  = "praat_collection.Collection"
  outfile$ = "praat_collection." + output$
else
  exitScript: "No objects selected"
endif

# Set output file
@checkWriteFile(save_as$,
  ... "Save object(s) as single " + output$ + " file...", outfile$)
outfile$ = checkWriteFile.name$

# Create temporary directory for output
@mktemp: "toserial.XXXXX"
infile$ = mktemp.name$ + infile$

# Do it!
Save as text file: infile$
command$ = "perl """ + preferencesDirectory$ +
  ... "plugin_serialise/scripts/praat2yaml.pl"" " +
  ... "--" + output$             + " " +
  ... "--" + format$             + " " +
  ... "--outfile """ + outfile$  + """ " +
  ... """" + infile$ + """"

@try: "system " + command$

# Delete the temporary directory
deleteFile: infile$
deleteFile: mktemp.name$

# Restore the original selection and clean-up
@restoreSavedSelection(original_selection)
removeObject: original_selection

# If the user requested preferences to be kept, restore originals
@restoreOutputPreferences()
