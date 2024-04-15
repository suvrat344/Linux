#!/bin/bash

# Write a bash script to perform the following task, redirect your output to ` out1.txt `.
# Consider a file named ` lsinfo.txt ` in your current working directory that contains output of the command ` ls -al ` run on some  # directory.
# Use grep/egrep to print the long-listing of all files excluding directories in ` lsinfo.txt ` whose last modified date is in       January.
# Note:
# - There are many special kind of files in linux for example for socket files the first character in permission string is 's' like  it is 'd' for directories.

grep -v "^d" lsinfo.txt  | grep "Jan" > out1.txt
