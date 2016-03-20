#!/bin/bash
i3-msg 'workspace 1; exec urxvt -e bash -c "cd ~/src/reacttest/ && ~/src/bin/nvim.sh app/*.js app/components/*"'
