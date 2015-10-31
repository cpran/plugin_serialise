# Praat object serialiser
# This version is _much_ simpler, and _much_ more robust but it does require
# Perl. For the older, kludgier, pure praat version, use save_as_json.old.praat
#
# Written by Jose J. Atria (13 February 2015)
#
# This script is free software: you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation, either version 3 of
# the License, or (at your option) any later version.
#
# A copy of the GNU General Public License is available at
# <http://www.gnu.org/licenses/>.

form Save as serialised text file...
  sentence Save_as
  optionmenu Output: 1
    option JSON
    option YAML
  optionmenu Format: 1
    option Data stream
    option Collection
  boolean Pretty_printed yes

  comment This command requires PERL
  comment If saving multiple objects with the same name, save as Collection
endform

appendInfoLine: "Warning: ""serialise_to_text.praat"" is deprecated. Prefer ""serialise.praat"""

runScript: "serialise.praat", save_as$, output$, format$, pretty_printed
