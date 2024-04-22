#!/bin/awk -f

# Write an AWK script to provide the serial number, result, and total for the data on the student marks.
# Note:
# - The output should be tab separated values.
# - A student is considered to have passed if he/she has scored at least 40 in all 5 subjects.
# **Sample Input**
# L1,L2,MATHS,SCIENCE,SOCIAL
# 86,92,78,90,85
# 70,80,95,88,92
# 92,88,35,82,78
# 65,20,20,85,90
# 88,90,92,78,85
# **Sample Output**
# SNO L1  L2  MATHS   SCIENCE SOCIAL  RESULT  TOTAL
# 1   86  92   78        90    85      PASS    431
# 2   70  80   95        88    92      PASS    425
# 3   92  88   35        82    78      FAIL    375
# 4   65  20   20        85    90      FAIL    280
# 5   88  90   92        78    85      PASS    433

BEGIN{
	FS = ","
	OFS = "\t"
	print "SNO","L1","L2","MATHS","SCIENCE","SOCIAL","RESULT","TOTAL"
}
NR>1{
	total=$1+$2+$3+$4+$5
	result="PASS"
	for(i=1;i<=5;i++){
		if($i < 40){
			result="FAIL"
			break
		}
	}
	print NR-1,$1,$2,$3,$4,$5,result,total	
}

