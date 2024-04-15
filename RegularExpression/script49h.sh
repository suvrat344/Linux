#!/bin/bash

# Write a bash script to list the names of all the c++ files (i.e. with the extension `.cpp`) in the current directory which containsa line such that
# - The line starts with the string  ` void main() ` and ends with the character  ` { `. There should be one or more spaces/tabs     between the characters  ` { ` and  ` ) ` , but nothing except spaces.
# - For e.g the lines ` void main(){ `, ` void main() {}} ` are not a match for the above condition, but the lines ` void main() { `,`void main()      { ` are a match.
# And also print the count of these files in the following line. (Note: Try ` tee /dev/tty ` to the purpose).
# Store your output in file ` out5.txt `.

grep -E "^void main\(\)[[:space:]]+{[[:space:]]*$" *.cpp | grep -o "^[0-9].cpp" | tee /dev/tty >> out5.txt
grep -E "^void main\(\)[[:space:]]+{[[:space:]]*$" *.cpp | grep -o "^[0-9].cpp" | wc -l >> out5.txt
