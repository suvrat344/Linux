#!/bin/bash

# In previous question, modify the output of your script as below.
# - Print the range string only if there is a filesystem in that range.
# For example, if there is no filesystem with usage >95% and also none in the range 75-85, and the rest all range has at least one   # filesystem with usage in that range than your output should be
# 0-50
# (names of filesystem one in each line with usage between 0 to 50%)
# 50-75
# (names of filesystem one in each line with usage between 50 to 75%)
# 85-95
# (names of filesystem one in each line with usage between 85 to 95%)
# Note:
# ` dfOutput.txt ` will be made available during evaluation.

declare -A map
while read -r line
do
        use=$(grep -oE '[0-9]+%' <<< $line)
        use=${use:0:-1}
        mount=$(grep -oE "%[[:space:]].*$" <<< $line | cut -d '%' -f2 | cut -d " " -f2-)

        if (( $use > 0 && $use < 50 ))
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

done < <(tail -n +2 dfOutput.txt)

for key in ${!map[@]}
do
        echo "$key"
        echo ${map[$key]} | tr '|' '\n' | grep -v '^$'
done
