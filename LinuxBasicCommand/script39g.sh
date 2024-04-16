#!/bin/bash

# You are writing a Bash Script and in one of the task, you have to count the number of occurence of some word in several files and  finallly the count should be in the variable 'ct'.
# Write a bash script  that can be sourced in a loop to count the number of occurence in all files, supposing that word count is     stored in the variable named 'words'.
# Your script will be used in a loop that will be run for each file.
# The value of 'ct' should be initialized to 0, at the beginning , and the number of words stored in the variable 'words' is to be   added for your command.
# Print the value of the variable 'ct' in the end.
# Hint : Write a Bash command that is equivalent to pseudocode "ct=ct+words",where 'ct' and 'words' are variables.
 
ct=$((ct+words))
echo $ct
