#!/bin/bash

# Write a bash script that reads a value from the standard input stream and prints PNUM if the value is a postive number or 0; printsNNUM if it is a negative number; else print STRING.

read n

if [[ $n =~ ^-?[0-9]*\.?[0-9]*$ ]]
then
	[[ $n =~ ^- ]] && echo "NNUM" || echo "PNUM"
else
	echo "STRING"
fi
