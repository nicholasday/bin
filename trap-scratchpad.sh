#!/bin/bash
file=/tmp/scratchpad
urxvt -name scratchpad
trap "rm $file" EXIT
