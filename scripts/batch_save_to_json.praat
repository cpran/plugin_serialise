# Batch JSON converter
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

include ../../plugin_utils/procedures/check_directory.proc
include ../../plugin_utils/procedures/require.proc
@require("5.3.44")

form Batch convert to JSON...
  sentence Directory
  comment Leave blank for GUI selector
  optionmenu Convert: 1
    option All supported
    option TextGrid
    option DurationTier
    option PitchTier
    option Intensity
    option IntensityTier
    option AmplitudeTier
  optionmenu Format: 1
    option Pretty printed
    option Minified
endform

@checkDirectory(directory$, "Read objects from...")
path$ = checkDirectory.name$

convert$ = if convert$ = "All supported" then "" else convert$ fi
files = Create Strings as file list: "files", path$ + "*" + convert$

n = Get number of strings
for i to n
  selectObject(files)
  filename$ = Get string: i
  myobject = Read from file: path$ + filename$
  runScript: "save_as_json.praat", path$, format$
  removeObject(myobject)
endfor
removeObject(files)
