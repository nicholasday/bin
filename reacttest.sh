#!/bin/bash
i3-msg "workspace $1; exec urxvt -title 'Reacttest - webpack' -e bash -c \"cd ~/src/reacttest/ && ~/src/bin/run.sh npm run serve\""
i3-msg "workspace $1; exec urxvt -e bash -c \"cd ~/src/reacttest/ && bash\""
. ~/src/bin/reacttest-edit.sh "$1"
