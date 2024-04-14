#!/bin/bash

# `df -h` gives the disk/filesystem usage information. Write a bash script to list all the filesystem mount point names based on     their percentage usage divided in 5 categories in the format below.                                                                # ```pseudo
# 0-50
# (names of filesystem one in each line with usage between 0 to 50%)
# 50-75
# (names of filesystem one in each line with usage between 50 to 75%)
# 75-85
# (names of filesystem one in each line with usage between 75 to 85%)
# 85-95
# (names of filesystem one in each line with usage between 85 to 95%)
# >95
# (names of filesystem one in each line with usage above 95%)
# ```                                                                                                                                # In each category, print the range in one line, followed by the filesystem mount point names. Print the range string even if there  are no filesystems with usage in that range. Your script should not print anything else, all other errors and output from your scriptshould be redirected to /dev/null.
# Write your script.
# Filesystem mount point name is the last field in the output of df -h.
# The categories are
# - 0% to less than 50% usage.
# - 50% to less than 75% usage.
# - 75% to less than 85% usage.
#  - 85% to less than 95% usage.
# - Equal and above 95% usage.
# Hint: Can store the df command output in a file. Then work on the file named ` dfOutput.txt ` line by line using the below script.
# ```Bash
# while read -r line;
# do
# echo $line; # To print the line.
# Write your code to process the line.
# done < dfOutput.txt
# ```
# Use ${var:0:-1} to remove the last character of string var.

declare -A map
map=(["0-50"]="" ["50-75"]="" ["75-85"]="" ["85-95"]="" [">95"]="")
while read -r line
do
	use=$(grep -oE '[0-9]+%' <<< $line)
	use=${use:0:-1}
	mount=$(grep -oE "%[[:space:]].*$" <<< $line | cut -d '%' -f2 | cut -d " " -f2-)
	
	if (( $use >= 0 && $use < 50 ))
	then
		map["0-50"]+="$mount|"
	elif (( $use >= 50 && $use < 75 ))
	then
		map["50-75"]+="$mount|"
	elif (( $use >= 75 && $use <85 ))
	then
		map["75-85"]+="$mount|"
	elif (( $use >=85 && $use < 95 ))
	then
		map["85-95"]+="$mount|"
	elif (( $use > 95 ))
	then
		map[">95"]+="$mount|"
	fi

done < <(tail -n +2 dfOutput2.txt)

for key in "0-50" "50-75" "75-85" "85-95" ">95"
do
	echo "$key"
	echo ${map[$key]} | tr '|' '\n' | grep -v '^$'
done
