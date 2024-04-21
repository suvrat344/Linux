#!/bin/bash

# Write a script to verify the exact word "System" or "Commands" (case-sensitive) exist in the standard input. If any of the words   # are present in the file, print `0` else `1`. Do not print anything else. Note that the words may occur on separate lines as well.


grep -qE "\bSystem\b|Commands" $1
if [[ $? -eq 0 ]]
then
	echo 0
else
	echo 1
fi
