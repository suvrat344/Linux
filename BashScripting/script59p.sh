#!/bin/bash

# Write a script which will take input from standard input and write output to standard output.
# You are given two files, file1 and file2 in the standard input.The content of two files is separated by a line 'EOF'.
# Print the following information:
# - Lines that are common in both files.
# - Lines that are only in file1.
# - Lines that are only in file2.
# Order of the output should be unchanged.

while read -r line
do
	if [[ $line = "EOF" ]]
	then
		sed -i "1d" file.txt
		break
	fi
	echo "$line" >> file1
	sed -i "1d" file.txt
done < file.txt

while read -r line
do
	echo "$line" >> file2
done < file.txt

echo "Common:"
grep -Fxf file1 file2

echo "Unique to file1:"
grep -Fvxf file2 file1

echo "Unique to file2:"
grep -Fvxf file1 file2

rm file1 file2
