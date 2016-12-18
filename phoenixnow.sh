#!/bin/bash
i3-msg "workspace $1; exec urxvt -title 'PhoenixNow - webpack' -e bash -c \"cd ~/src/PhoenixNowWebFrontend/ && ~/src/bin/run.sh npm run serve\""
i3-msg "workspace $1; exec urxvt -e bash -c \"cd ~/src/PhoenixNowWebFrontend/ && bash\""
. ~/src/bin/phoenixnow-edit.sh "$1"
