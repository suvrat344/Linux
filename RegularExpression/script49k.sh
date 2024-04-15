#!/bin/bash

# Given an access.log similar to previous question in your standard input,print how many times request has been sent to the server   # from a:
# - Macintosh
# - Windows
# - Linux
# - iPhone
# Print the name of the OS and the number of requests in the format:
# Macintosh: 10
# Windows: 20
# Linux: 30
# iPhone: 40
# If the OS is not in the list, value should be 0.

declare -A map
map=([Macintosh]=0 [Windows]=0 [Linux]=0 [iPhone]=0)
OS=("Macintosh" "Windows" "Linux" "iPhone")

while read -r line
do
	for key in "${OS[@]}"
	do
		if [[ $line =~ $key ]]
		then
			map[$key]=$((map[$key]+1))
		fi
	done
done < "$1"

for key in "${OS[@]}"
do
	echo "$key: ${map[$key]}"
done

# Solution2
# cat > temp
# OS=("Macintosh" "Windows" "Linux" "iPhone")
# for os in "${OS[@]}"; do
#   echo "$os: $(grep -c $os temp)"
# done
# rm temp


# Solution3
# OS=("Macintosh" "Windows" "Linux" "iPhone")
# declare -A map
# map=([Macintosh]=0 [Windows]=0 [Linux]=0 [iPhone]=0)
# while read -r line; do
#   for os in "${OS[@]}"; do
#     map[$os]=$((map[$os]+$(grep -wc "$os" <<< "$line")))
#   done
# done
#
# for os in "${OS[@]}"; do
#   echo "$os: ${map[$os]}"
# done


# Solution4
# cat > temp
# for os in Macintosh Windows Linux iPhone; do
#  echo "$os: $(grep -wc "$os" temp)"
# done
# rm temp
