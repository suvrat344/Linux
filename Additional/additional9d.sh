#!/bin/bash

# Write a bash script which works on output of ls -li to produce an output which will have unique list of files which has no softlinkand has only one file for multiple hardlinks present.
# Note: The final output should be sorted by ascending order of inode number.
# :wq
# Hint: Output of the ls -li is given as standard input.

ls -li | sort | grep -v "lrwx" | uniq -w 10
