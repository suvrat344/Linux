#!/bin/bash

# Write a command to append the contents of ` file1.txt ` to the start of ` file2.txt `.
# That is, the contents of ` file2.txt ` should be the contents of ` file1.txt ` followed by the contents ` file2.txt

cat file2.txt >> file1.txt | mv file1.txt file2.txt 
