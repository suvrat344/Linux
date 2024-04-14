#!/bin/bash

# Write a bash script. The script takes two arguments, checks if both the arguments are positive integers then prints their sum; elseconcatenate the string values in both the arguments and prints the combined string.

num1=$1
num2=$2

if [[ $num1 =~ ^[0-9]*$ && $num2 =~ ^[0-9]*$ ]]
then
	echo $(( num1 + num2 ))
else
	echo "${num1}${num2}"
fi

