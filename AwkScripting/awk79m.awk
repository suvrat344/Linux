#!/bin/awk -f

# You are working on a data file for a Machine Learning Project but the data might be corrupted somehow during transit.
# The file is supposed to be separated by some delimiter,and all records should have the same number of fields.
# You see that the field delimiters are correct, but the record delimiters have also become same as the field delimiter.
# You know the number of columns per record, and it is stored in the bash variable `N`. The delimiter for the fields is     # stored in the bash variable `DELIMITER`.
# You have to write an AWK script that reverts this corruption.
# The data does not have any header rows.
# **Sample Input**
# 1,2,3,4,5,6,7,8,9,10,11,12
# N = 3
# DELIMITER = ','
# **Sample Output**
# 1,2,3
# 4,5,6
# 7,8,9
# 10,11,12

BEGIN{
	FS=ENVIRON["FS"]
	N=ENVIRON["N"]
	FPAT="([^" FS "]+" FS "){" N-1 "}" "([^" FS "]+)";
}
{
	for(i=1;i<=NF;i++){
		print $i
	}
}
