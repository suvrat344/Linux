#!/bin/bash

# Write a bash script that prints the sum of all even numbers of an array of numbers. The array variable is named as number_arr.

read -a num_arr

sum=0

for i in ${num_arr[@]}
do
	if [[ $(( i % 2)) -eq 0 ]]
	then
		((sum+=$i))
	fi
done
echo $sum
