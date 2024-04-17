#!/bin/usr/awk -f

# Write an awk script to print the total number of fields in a csv file with the field separator as comma (,). Print only the number and nothing else.

BEGIN{
	FS=","
	total=0
}
{
	total+=NF
}
END{
	print total
}
