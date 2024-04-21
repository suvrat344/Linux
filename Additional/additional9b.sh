#!/bin/bash

# Error Handling requires one to understand exit status implementation. Write a script which will echo "Success" if there are 3      arguments passed to it and print all the three arguments.The exit status of any more or less arguments passed to the function should end up in exit status of 1.

if [[ $# -eq 3 ]]
then 
	echo "Success $1 $2 $3"
else
	exit 1
fi
