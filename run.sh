#!/bin/bash
TMPFILE=$(mktemp)

# Add stuff to the temporary file
echo "source ~/.bashrc" > $TMPFILE
echo "$@" >> $TMPFILE
echo "rm -f $TMPFILE" >> $TMPFILE

# Start the new bash shell 
bash --rcfile $TMPFILE
