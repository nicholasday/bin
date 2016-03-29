#!/bin/bash
i3-msg "workspace $1; exec urxvt -e bash -c \"~/src/bin/run.sh mopidy\""
i3-msg "workspace $1; exec urxvt -e bash -c \"cd ~/music/ && sleep 2 && ~/src/bin/run.sh random\""
