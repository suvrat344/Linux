#!/bin/bash

# Write a bash script that accepts a few arguments(all numbers) and performs the following functions.
# Prints the string Error if the number of arguments supplied is not equal to 2.
# If the number of arguments is equal to two, print their sum.

if [[ $# -eq 2 ]]
then
	echo $(($1 + $2))
else
	echo "Error"
fi
