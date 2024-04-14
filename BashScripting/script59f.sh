#!/bin/bash

# Write a bash script that reads two numbers from the standard input and prints the sum of the numbers. Assume that the input will benumeric only.
# Write your script in the file <code>script.sh</code>.


read num1 num2
echo $(( num1 + num2 ))
