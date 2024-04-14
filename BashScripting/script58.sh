#!/bin/bash

# Write a bash script that takes a number as an argument and prints "Yes" if the number is a prime number, else prints "No".

num=$1
flag=1

if [[ $num -eq 1 ]]
then
	echo "No"
	exit 0
fi

for (( i=2; i < $num ; i++ ))
do

	if [[ $(( num % i)) -eq 0 ]]
	then
		echo "No"
		flag=0
		break
	fi
done

if [[ $flag -eq 1 ]]
then
	echo "Yes"
fi

