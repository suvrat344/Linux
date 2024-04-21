#!/bin/bash

# Write a script  to create a link named `storage` in the current directory to the directory its path is stored in
# the variable `DIR_PATH`

DIR_PATH="/home/suvrat344/week1"
ln -s "$DIR_PATH" ./storage
