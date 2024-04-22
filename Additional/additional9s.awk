#!/bin/awk -f

# Write an AWK script to provide the mean, and median for the data of student marks.
# Hint: use `asort(arr)` function to sort the array `arr` by values
# Note: The output should be tab separated values and hyphen (-) should be printed for non-applicable values.
# **Sample Input**
# SNO L1  L2  MATHS   SCIENCE SOCIAL  RESULT  TOTAL
# 1   86  92   78        90     85     PASS    431
# 2   70  80   95        88     92     PASS    425
# 3   92  88   35        82     78     FAIL    375
# 4   65  20   20        85     90     FAIL    280
# 5   88  90   92        78     85     PASS    433
# **Sample Output**
# SNO     L1    L2   MATHS   SCIENCE SOCIAL  RESULT  TOTAL
# 1       86    92    78        90     85     PASS    431
# 2       70    80    95        88     92     PASS    425
# 3       92    88    35        82     78     FAIL    375
# 4       65    20    20        85     90     FAIL    280
# 5       88    90    92        78     85     PASS    433
# MEAN    80.2  74    64        84.6   86      -      388.8
# MEDIAN  86    88    78        85     85      -      425

{
	for(i=2;i<=NF;i++){
		j=2
		if($i ~ /[0-9]/ && NR !=1){
			sum[i]+=$i
			value[i][NR-1]=$i
		}
	}
	print
}
END{
	printf "MEAN"
	for(i=2;i<=NF;i++){
		if(i in sum && NR > 1){
			printf "\t"
			printf sum[i]/(NR-1)
		}
		else{
			printf "\t-"
		}
	}
	printf "\n"
	printf "MEDIAN"
	for(i=2;i<=NF;i++){
		if(i in value==0){
			printf "\t-"
			continue
		}
		asort(value[i])
		printf "\t"
		if(NR % 2 == 0){
			printf value[i][NR/2]
		}
		else{
			printf (value[i][(NR-1)/2] + value[i][(NR-1)/2+1])/2
		}
	}
}
			
