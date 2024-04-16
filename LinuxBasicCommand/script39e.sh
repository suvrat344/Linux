#!/bin/bash

# Write a bash script to redirect the "manual" entry (i.e. output of man page) for the command which is specified as value of the    shell variable named 'cmd' to a text file 'man_commandValue.txt', where 'commandValue' is the value in variable 'cmd' (example:if thevariable 'cmd' has value 'ls',then redirect the output of 'man ls' to the file named 'man_ls.txt').
#If there is an error in getting the man page of command in variable 'cmd',then redirect the standard error to 'man_commandValue.err'and execute the help command for the command in variable 'cmd' and redirect the output to the file 'man_commandValue.txt',where      'commandValue' is the value in variable 'cmd'.
# Hint : use operator && or || for executing help command command based on exit status of first command.

cmd="ls"
man ${cmd} > man_${cmd}.txt 2>man_${cmd}.err || help ${cmd} > man_${cmd}.txt 
