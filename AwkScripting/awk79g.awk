#!/bin/awk -f

# Write an awk script to get when combined, the distinct (union) lines among two files ` file1 ` and ` file2 `.
# The printed lines are based on the sequence of occurrence from ` file1 ` to ` file2 `.
# Hint: Use the predefined variables NR and FNR

(NR == FNR){
	if(!($0 in lines)){
		print $0
		lines[$0] = 1
		count++;
	}
}

(NR > FNR){
	if(!($0 in lines)){
		print $0
		lines[$0] = 1
		count++;
	}
}
