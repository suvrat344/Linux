#!/bin/bash

# Consider a file named data.txt in the current working directory. Write a script to determine if this file has more than 16 lines ornot. Your script should print Yes if the lines are more than 16; else print No.

if [[ $(cat data.txt | wc -l) ]] 
then
	echo "Yes"
else
	echo "No"
fi
