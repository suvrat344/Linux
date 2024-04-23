#!/bin/sed -f

# Write sed script that are run from your bash script that performs the following operations on the given standard input:
# - Replace all occurrences of the word "the" with "this"
# - Add the text "#---" before each function definition
# - Add copyright information "# Copyright 2024" at the beginning of the file
# - After every 5 lines, add the line number as a comment
# A function definition is a line that starts with the word "function" followed by a space. The line should contain the symbols `()` # and `{`.The function definition may contain any number of spaces before or after the symbols.The `{` should be the last character  # on the line, excluding any trailing spaces or tabs.The word function can be preceded by any number of spaces or tabs.
# Your script should use sed commands to accomplish this.

1i # Copyright 2024
s/\bthe\b/this/g
/^[[:space:]]*function[[:space:]].*()[[:space:]]*{[[:space:]]*$/i #---
5~5{
	 i#
          =                       
}
