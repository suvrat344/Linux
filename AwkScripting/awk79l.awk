#!/bin/awk -f

# You are given a csv file with a lot of columns.
# You want to write some awk scripts to process the file.
# But it is hard for you to remember the column number of each column.
# Write a preprocessing awk script that will take the csv file and print out the column names from the header line with the column   number.
# **Sample Input**
# name,age,gender,city
# Bob,21,M,New York
# Alice,22,F,Los Angeles
# **Sample Output**
# 1 name
# 2 age
# 3 gender
# 4 city

BEGIN{
	FS=",";
}
(NR==1){
	for(i=1;i<=NF;i++){
		print i,$i
	}
}
