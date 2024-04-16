#!/bin/bash


# Write a bash script to display only the filename without extension whose absolute path is stored in a shell variable named 'file'. The extension should not include the dot '.'.
# Example : 'file=/home/student56/tmp/artic.jpg'
# Output:
# '''
# artic
# '''

file="/home/student56/tmp/arctic.jpg"
filename=${file##*/}
echo ${filename%.*}
