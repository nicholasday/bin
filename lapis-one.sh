#!/bin/bash
sudo systemctl start postgresql
i3-msg 'exec "alacritty -t \"yarn start\" --working-directory ~/src/lapis-one/frontend -e ~/src/bin/run.sh yarn start"'
i3-msg 'exec "alacritty -t \"watchexec\" --working-directory ~/src/lapis-one -e ~/.cargo/bin/watchexec -w ~/src/lapis-one -r ~/.cargo/bin/cargo run"'
i3-msg 'workspace 3; exec zim'
i3-msg 'workspace 1; exec code ~/src/lapis-one'
