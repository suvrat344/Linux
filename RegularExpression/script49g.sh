#!/bin/bash

# Write a bash script to list the names of all the c++ files (i.e. with the extension `.cpp`) in the current directory which containsa line such that
# - The line starts with the string  `void main()` and ends with the character  `{`. There should be one or more spaces/tabs between the characters  `{` and  `)` , but nothing except spaces.
# - For e.g the lines ` void main(){ `, ` void main() {}} ` are not a match for the above condition, but the lines ` void main() { `,`void main()      { ` are a match.

cpp_files=$(ls *.cpp)
for file in $cpp_files
do
        if grep -qE "^void main\(\)[[:space:]]+{[[:space:]]*$" $file
        then
           echo $file
        fi
done

# grep -E "^\bvoid main\b\(\)[[:space:]]+{[[:space:]]*$" *.cpp | grep -o "^[1-9]\.cpp"
