#!/bin/bash


# The variable 'filename' has name of file along with the extension.Find the file extension and print it.Write your answer in bash   script.
# Note :
# - The variable will be made available during evaluation.
# Example,
# - If the filename is 'abc.txt',print 'txt'.
# - If the filename is 'script.sh',print 'sh'.

filename='abc.txt'
echo ${filename#*.}
