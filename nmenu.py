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
        paths = ["e", ".."] + sorted(os.listdir("."))
        choice = dmenu(paths)
        new_dir = base + choice[:-1] + "/"
        if choice.status:
            return
        elif os.path.isdir(new_dir): 
            directory(new_dir)
        elif choice[:-1] == "e":
            return
        else:
            if sys.argv[1] == 'vim':
                vim(base, choice[:-1])
            elif sys.argv[1] == 'execute':
                cmd = shlex.split('bash -c ' + base + choice[:-1])
                run(cmd)

def note(base, choice):
    content = dmenu("")
    print(choice)
    with open(base + choice, 'a') as f:
        f.write(content)

def vim(base, choice):
    path = os.path.dirname(__file__)
    # Only works if not run in current directory
    cmd = shlex.split('urxvt -e bash -c "' + path + '/nvim.sh ' + base + choice + '"')
    run(cmd)

if __name__ == "__main__":
    print(sys.argv[1])
    print(sys.argv[2])
    directory(sys.argv[2])
