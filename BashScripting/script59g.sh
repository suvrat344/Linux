#!/bin/bash

# Write a bash script that takes two arguments, checks if both the arguments are positive integers then prints their sum; else prints"NOT INTEGERS" to STDERR and exits with exit code 1.
# Note: Use the below if else conditional statement if needed.
# ```bash
# if condition; then
# ...
# ...
# else
# ...
# ...
# fi
# ```

num1=$1
num2=$2

if [[ $num1 =~ ^[0-9]*$ && $num2 =~ ^[0-9]*$ ]]
then
	echo $(( num1 + num2 ))
else
	echo "NOT INTEGERS" >&2
	exit 1
fi

