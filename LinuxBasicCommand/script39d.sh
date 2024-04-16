#!/bin/bash

# The employee ID of a certain company is in the following format: 'DDYYPXXX' where
# - 'DD' stands for department; ex : FN for finance, SD for Software Development
# - 'YY' stands for work experience, which is a two digit number.
# - 'P' stands for position, which is a letter; e.g. M for Manager,etc.
# - 'XXX' stands for ID number, which is a three digit number.
# Given three Employee IDs,extract just the Department and the ID Number of these employees. Redirect all the output to the file     named 'output.txt'
# The names of the variable which stores the employee Ids are shell variable with names 'eid1','eid2' and 'eid3'.Redirect your outpurin the same sequence as 'sort -n' order of the shell variable names.
# Write your code in script.

(echo ${eid1:0:2}${eid1:5:3} && ${eid2:0:2}${eid2:5:3} && ${eid3:0:2}${eid3:5:3})
