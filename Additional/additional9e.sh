#!/bin/bash

# Write a script that will remove the outer rectangle and grow the inner rectangle to the exact size of outer rectangle and the innerrectangle region should be replaced with '0' (zero) including the boundary line.
# Note:
# . The outer rectangle is always made up of asterisks '*'
# . The inner rectangle is always made up of lowercase X 'x'
# . The input should be taken from the standard input

while read -r line
do
	line="${line//x/0}"
	n=$(echo "$line" | grep -oE '0 +0' | wc -m) 
	for((i=0;i<(n-3);i++))
	do
		line="${line/0 /00}"
	done
	line="${line//\*/x}"
	echo "$line"
done < input6.txt

