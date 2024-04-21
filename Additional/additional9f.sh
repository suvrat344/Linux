#!/bin/bash

# A text input usually contains puctuations, upper case letters.Write a script which will
# - remove punctuations,
# - convert uppercase letters to lower case and
# - finally convert the space character to newline character in that order.
# Finally use concepts of sort and uniq commands to print top number 5 through 10 most frequent words with its count.
# **Hint**:
# - Refer to `tr`, `sort`, `uniq` commands for help.

cat input7.txt | tr -d '!@#$%^&*,.()_+{}:"<>?' | tr '[A-Z]' '[a-z]' | tr ' ' '\n' | sort | uniq -c | sort -nr | head -n10 | tail -n5 | tr -s ' ' | cut -d ' ' -f3
