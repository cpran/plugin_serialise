# Praat object to JSON converter
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

include ../../plugin_utils/procedures/check_filename.proc

form Read from serialised text file...
  sentence Read_from
  comment This command reads from YAML or JSON files
  comment File format will be detected from file extension
endform

@checkFilename(read_from$, "Read serialised text file...")
infile$ = checkFilename.name$

appendInfoLine: "Warning: ""read_from_json.praat"" is deprecated. Prefer ""deserialise.praat"""

runScript: "deserialise.praat", infile$
