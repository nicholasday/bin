#!/bin/bash
i3-msg "workspace $1; exec urxvt -title 'PhoenixNowBackend - gunicorn' -e bash -c \"cd ~/src/PhoenixNowBackend/ && ~/src/bin/run.sh gunicorn app --reload\""
i3-msg "workspace $1; exec urxvt -e bash -c \"cd ~/src/PhoenixNowBackend/ && bash\""
i3-msg "workspace $1; exec urxvt -title 'PhoenixNowBackend - editor' -e bash -c \"cd ~/src/PhoenixNowBackend/ && ~/src/bin/run.sh nvim *.py\""
