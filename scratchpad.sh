#!/bin/bash
file=/tmp/scratchpad

if [ ! -e "$file" ] ; then
    touch "$file"
    i3-msg "exec ~/src/bin/trap-scratchpad.sh"
else
    i3-msg "scratchpad show"
fi
