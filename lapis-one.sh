#!/bin/bash
sudo systemctl start postgresql
sudo sysctl fs.inotify.max_user_watches=524288
i3-msg 'workspace 2; exec zim'
i3-msg 'workspace 1; exec "~/src/bin/run.sh code ~/src/lapis-one"'
i3-msg 'exec "~/src/bin/run.sh code ~/src/lapis-one/frontend"'
