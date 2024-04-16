#!/bin/bash

# A school teaches from first to twelfth standard, each standard has 5 sections named as ` A ` to ` E `. The class room number is    represented as standard (as number) followed by the section, for example ` 12E `, ` 3C `, etc..
# Each classroom has 40 students.
# Write a Bash command to create a file for each student, name the files from 1 to 40 in every directory.

touch {1..12}{A..E}/{1..40}
