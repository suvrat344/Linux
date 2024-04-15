#!/bin/bash

# The command below gives the following output.
# $ cat twocities.txt
# It was the best of times, it was the worst of times,
# it was the age of wisdom, it was the age of foolishness,
# it was the epoch of belief, it was the epoch of incredulity,
# it was the season of Light, it was the season of Darkness,
# it was the spring of hope, it was the winter of despair,
# we had everything before us, we had nothing before us,
# we were all going direct to Heaven, we were all going direct the other way
# Write a bash script  to count and print the number of lines that starts with a capital letter and contains the word `it`           (case-sensitive) in the above file.
# (a) Try a solution with only grep command.

grep -E "^[[:upper:]].*\bit\b" twocities.txt | wc -l
