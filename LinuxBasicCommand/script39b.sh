#!/bin/bash

# Write a bash script to redirect the stderr and stdout of the command `ls file1.txt file2.txt` in that particular order to          `output.txt`.

ls file1.txt file2.txt > output.txt 2>&1
