#!/bin/usr/awk -f

# Write an Awk command to print the first field of the all the lines containing more than 20 characters in the file marks1.csv. The  field separator in the file is comma (,).

BEGIN{
	FS=","
}
{
	if(length($0)>20){
		print $1
	}
}
