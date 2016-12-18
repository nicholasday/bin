#!/bin/bash
i3-msg "workspace $@; exec urxvt -title 'PhoenixNow - editor' -e bash -c \"cd ~/src/PhoenixNowWebFrontend/ && ~/src/bin/run.sh nvim app/*.js app/components/*\""
