#!/bin/bash
i3-msg "workspace $@; exec urxvt -e bash -c \"cd ~/src/reacttest && ~/src/bin/run.sh nvim app/*.js app/components/*\""
