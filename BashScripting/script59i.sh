#!/bin/bash

# Write a bash script that accepts a file path as an argument and checks if that exists and is readable by the current user and printthe output as below.
# - Prints "DOES NOT EXIST" on STDERR and return with error code 1 if the file does not exist at the given path.
# - Prints "NOT READABLE" on STDERR and return with error code 2 if the file is not readable by the current user.
# - Prints "WOO HOO" if the file exists and is readable too.
# Note:
# - Use the below if elif conditional statement if needed
# ```bash
# if condition; then
# ...
# ...
# elif condition; then
# ...
# ...
# else
# ...
# ...
# fi
# ```

if [[ ! -e $1 ]]
then
	echo "DOES NOT EXIST" >&2
	exit 1

elif [[ ! -r $1 ]]
then
	echo "NOT READABLE" >&2
	exit 2
else
	echo "WOO HOO"
fi
