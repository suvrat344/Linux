#!/bin/bash

# Write a script which will take input from standard input and write output to standard output.
# You are given heart attack data. From the given data through standard input,print only the lines that have outliers in the heart   # rate field. The data may or may not have a header row. The heart rate field is the 3rd field in the data. The heart rate field is  # an integer. An outlier is a value that is more than 1.5 times the interquartile range from the third quartile, or less than 1.5    # times the interquartile range from the first quartile.
# **Header format**:
# ```csv
# Age,Gender,Heart rate,Systolic blood pressure,Diastolic blood pressure,Blood sugar,CK-MB,Troponin,Result
# ```


sed -i '/^Age/d' heartattack.csv
sort -t "," -k3,3 -n heartattack.csv -o data_sorted 

mapfile -t heartrates < <(cut -d "," -f3 data_sorted)
lines=${#heartrates[@]}

if [[ $((lines % 2 )) -eq 0 ]]
then
	Q1=$(( lines/4 ))
	Q3=$(( 3*lines/4 ))
else
	Q1=$(( (lines+1)/4 ))
	Q3=$(( 3*(lines+1)/4 ))
fi

Q1=${heartrates[$Q1]}
Q3=${heartrates[$Q3]}
IQR=$(( Q3 - Q1 ))

lower=$(echo "$Q1 - 1.5 * $IQR" | bc)
upper=$(echo "$Q3 + 1.5 * $IQR" | bc)
awk -F "," -v lower="$lower" -v upper="$upper" '$3<lower || $3>upper' data_sorted
rm data_sorted
