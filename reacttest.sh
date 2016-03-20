#!/bin/bash
i3-msg 'workspace 2; exec urxvt -e bash -c "cd ~/src/reacttest/ && npm run serve"'
i3-msg 'workspace 2; exec urxvt -e bash -c "cd ~/src/reacttest/ && bash"'
. ~/src/bin/reacttest-edit.sh
