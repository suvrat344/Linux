#!/bin/bash

# A school teaches from first to twelfth standard, each standard has 5 sections named as ` A ` to ` E `. The class room number is    represented as standard(as number) followed by the section, for example ` 12E `, ` 3C `, etc..
# Each classroom has 40 students. There is a directory for every classroom. There is a file for every student named from 1 to 40 in  every classroom directory.
# Suddenly the school experienced 40% drop in first and sixth standard so they reduced the number of students in each class room to  32.
# Your task is to remove the extra files in the respective directories, i.e. named from 33 to 40.

rm {1..6}{A..E}/{33..40}
