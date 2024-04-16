#!/bin/bash

# Write a  to redirect the stderr of a command which is specified via variable 'cmd' to a text file 'error.txt' and print the stdout only if there is no error.
# Hint : Store the stdout to some file then based on success or failure of the command print that file.

cmd=`ls`
echo ${cmd} > temp_file 2>error.txt && cat temp_file
