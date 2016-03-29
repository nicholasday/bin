#!/usr/bin/env python3
from subprocess import Popen, PIPE, run
import os
import shlex
import sys

def dmenu(items):
    input_str = "\n".join(items)
    command = Popen("rofi -dmenu -p > ".split(), stdout=PIPE, stdin=PIPE, universal_newlines=True)
    return command.communicate(input_str)[0]

def directory(base):
    if os.path.isdir(base):
        os.chdir(base)
        paths = [".."] + sorted(os.listdir("."))
        choice = dmenu(paths)
        new_dir = base + choice[:-1] + "/"
        if (type(choice) is not str) and choice.status:
            return
        elif os.path.isdir(new_dir): 
            directory(new_dir)
        else:
            if sys.argv[1] == 'vim':
                vim(base, choice[:-1])
            elif sys.argv[1] == 'execute':
                execute(base, choice[:-1])

def execute(base, choice):
    dmenu_next = dmenu(['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'])
    print(dmenu_next)
    cmd = shlex.split('bash -c "' + base + choice + ' ' + dmenu_next[:-1] + '"')
    run(cmd)

def note(base, choice):
    content = dmenu("")
    print(choice)
    with open(base + choice, 'a') as f:
        f.write(content)

def vim(base, choice):
    path = os.path.dirname(__file__)
    # Only works if not run in current directory
    cmd = shlex.split('urxvt -e bash -c "' + path + '/run.sh nvim ' + base + choice + '"')
    run(cmd)

if __name__ == "__main__":
    print(sys.argv[1])
    print(sys.argv[2])
    directory(sys.argv[2])
