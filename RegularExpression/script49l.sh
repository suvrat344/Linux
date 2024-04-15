#!/bin/bash

# You are given an access3.log file to your standard input similar to previous question. You are to print the count of the HTTP VERBSin the file. The HTTP VERBS are GET, POST, PUT, DELETE, PATCH, OPTIONS, HEAD.
# The output should be in descending order of the count of the HTTP VERBS.VERBS with count 0 should not be printed. VERBS with same  count should be printed in the order of their name.
# **Hint**: Be familiar with how loops work, how you can redirect stdout of a loop to another command, and how to sort the output of a command based on any arbitrary column.
# **Sample Output**
# GET 10
# POST 5
# DELETE 3
# PUT 2
# OPTIONS 1

for verb in GET POST PUT DELETE PATCH OPTIONS HEAD
do
	echo "$verb $(grep -wc "$verb /" $1)"
done < $1 |  grep -v " 0$" | sort -k2 -nr
