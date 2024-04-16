#!/bin/bash

# The shell variable "logfile" contains the absolute path to some files.Write a script which performs the following task.
# The task is to print two lines, where first line is the filename alone and the second line is the path of the directory in which   the file "logfile" is located (print the path without the trail slash '/').
# Example shell variable: 'logfile = /home/student78/daily.log'
# Output:
# '''
# daily.log
# /home/student78
# '''

logfile="/home/student78/daily.log"
echo ${logfile##*/}
echo ${logfile%/*}
