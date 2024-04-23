#!/bin/bash

# The command ` cut -d " " -f 5 lsoutput ` is executed to extract the total size of the files. But the ` lsoutput ` contains multiplespaces between fields and for some reason we cannot change the cut command. Your task is to preprocess the file `lsoutput` to work   with the cut command.
# Write a script to perform the task.
# Hint: Use the -i option in sed to do the modification in the file.
# Note:
# - `lsoutput` will be created during evaluation.

sed -E '/[[:space:]]{2,}/s// /' output.txt | cut -d ' ' -f5
