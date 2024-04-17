#!/bin/bash

# Without using the wc command , write a bash script that accepts any number of arguments. Out of these some would be options(hyphen plus a character like -l or -c) and the last argument will be a file path(use ${@: -1} to access the last argument, there is a space before -1). Only four options are accepted by your script -l, -w, -n and -s.
# Assume that file path given will always be for a valid file and we will refer it as file in the next lines. For options,           # If no option is supplied to your script do nothing.
# If -l option is supplied, print the number of lines in the file.
# If -w option is supplied, print the number of words in the file. Assume that any string between spaces is a word. i.e. if using awkcount the number of fields in each line to get the word count.
# If -n option is supplied, print the number of lines having only digits(no alphabets or spaces) in the file.
# option -s also accepts an argument say str. In this case print the number of lines containing the string str. If no argument is    specified with -s option print 0.
# The above options can be supplied together or more than once. Print the required count for each appearance of the option on a new  # line. For e.g.
# if -l and -w are both supplied together in the sequence print count of lines and count of words each on separate lines.
# If -l, -n and -l options are supplied in the sequence then print number of lines, number of lines containing only digits and       finally again number of lines in the file each on separate line.
# Hints:
# Use while getopts style code.
# Use awk to find the count. Or a combination of egrep and awk for counting lines which matches some pattern. Or pattern block of awk# Note: Do not use single quotes in your script. Either replace each single quote with double quotes(if you are not using any double quotes in your awk script) or replace each single quote with <code>'\''</code>
# Sample
# Suppose your bash script. In the below sample the argument to -s option is "say" so this should count all the lines containing the string "say".
# For the public test case all the commands given in the below sample are executed inthe same sequence one by one on the input file.
# $ cat somefile.txt
# This is a sample file
# this is not end justsay start
# that contains say
# some number
# say like 10
# or
# 20
# or
# 233
# 444
# or say 3444
# and now it ends.
# ​
# $ bash myCount.sh -l somefile.txt      
# 12
# $ bash myCount.sh -w somefile.txt
# 31
# $ bash myCount.sh -n somefile.txt
# 3
# $ bash myCount.sh -s say somefile.txt
# 4
# $ bash myCount.sh -l -n somefile.txt
# 12
# 3
# $ bash myCount.sh -l -s say -l -n somefile.txt                                                                                     # 12
# 4
# 12
# 3
# $ bash myCount.sh
# $ bash myCount.sh somefile.txt

filename=${@: -1}

while getopts 'wlns:' options
do
	case $options in
		s)
			str=${OPTARG}
			grep "$str" $filename | awk 'END{print NR}'
			;;
		w)
			awk '{total+=NF}END{print total}' $filename
			;;
		l)
			awk 'END{print NR}' $filename
			;;
		n)
			awk '/^[0-9]*[0-9]$/{c++}END{print c}' $filename
			;;
		*)
			echo "ERROR"
			;;
		esac
done



