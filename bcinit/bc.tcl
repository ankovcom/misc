#/bin/sh
#\
exec wish "$0" "$@"

# An experiment for blockchain-based
# software/data project management.

# (c) Alexey Noskov 2019 http://n-kov.com
source xxhash.tcl
package require n-kov




checkbutton .ispol -text "Test text 1" -variable isPolygon -onvalue 1 -offvalue 0
button .clear -text "Clear command" -command ".c delete all;catch {unset pts};set tagId 0;catch {unset pnumber}; catch {unset descs};set cur_desc {A place for shape descriptor}"
grid .ispol -column 0 -row 0
grid .clear -column 1 -row 0
label .dist_label -text "Enter a value:"
grid .dist_label -column 2 -row 0
entry .ent -textvariable point_distance -background white
grid .ent -column 3 -row 0
label .len_label -text "Set a value:"
entry .seglen -textvariable seg_length -background white
button .animate -text "Test"  -command ""
label .desc -textvariable cur_desc
grid .len_label -column 0 -row 1
grid .seglen -column 1 -row 1
grid .animate -column 2 -row 1
grid .desc -column 3 -row 1
canvas .c -width 800 -height 600 -background lightgreen
grid .c -column 0 -row 2 -columnspan 5

bind .c <Double-1> ""
bind .c <Button-1> ""
bind .c <Button-3> ""
wm title . "A blockchain experiment for software/data projects management"
#drawPoint .c $x $y "group_$tagId edpts $idp" 1 blue blue
