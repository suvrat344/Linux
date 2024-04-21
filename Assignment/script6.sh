#!/bin/bash

# Write a bash script to scrape a weather forecast website.
# The script takes 3 command line arguments
# * argument 1
# 	-  ` city-name `.
# * argument 2
# - One of ` min ` and ` max ` refers to minimum temperature and maximum temperature respectively.
# * argument 3
# - One of ` mode ` and ` average `.
# - If you get more than one mode, your script should return the smallest mode value.
# The output
# * A number
# - Round of your answer to two decimal places.
# - i.e if the actual answer is `15.666666` , your answer should be `15.67`
# Url of weather forecast website : [http://weather.local](http://weather.local)
# Interpretation :
# ./script.sh chennai min average
# This returns the ` average ` of the ` min `imum temperature of city ` chennai ` on all days given in forecast.

city=$1
min_max=$2
mode_average=$3

mapfile min < <(grep -oE "\b[[:digit:]]+.C[[:space:]]+\|[[:space:]]+[[:digit:]]+.C\b" $city.html | sed "s/.C//pg" | cut -d "|" -f1)
mapfile max < <(grep -oE "\b[[:digit:]]+.C[[:space:]]+\|[[:space:]]+[[:digit:]]+.C\b" $city.html | sed "s/.C//pg" | cut -d "|" -f2)
total=0

if [[ $mode_average == "average" ]]
then	
	if [[ $min_max == "min" ]]
	then
		for i in ${min[@]}
		do
			(( total += i ))
		done
	else
		for i in ${max[@]}
        	do
                	(( total += i ))
        	done
	fi
	echo "scale=4;$total/${#min[@]}" | bc | xargs printf "%.2f\n"
else
	if [[ $min_max == "min" ]]
       	then
		mode=$(printf "%s\n" "${min[@]}" |sed '/^$/d' | sort -n | uniq -c | sort -k1,1nr -k2,2 | awk '(NR==1){print $2}')
    	else
		mode=$(printf "%s\n" "${max[@]}" | sed '/^$/d' | sort -n | uniq -c | sort -k1,1nr -k2,2 | awk '(NR==1){print $2}')
    	fi
    	echo $mode
fi

