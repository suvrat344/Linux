#!/bin/bash

# Add the string 'EOF alpha' at the end of the file(starting at a new line) alpha.txt then append the contents of the file           numbers.txt at the end of the file(starting at a new line) alpha.txt. alpha.txt and numbers.txt are located in the current working   directory.

echo "EOF alpha" >> alpha.txt | cat number.txt >> alpha.txt
