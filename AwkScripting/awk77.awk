#!/usr/bin/awk -f

# Write an Awk Script to print all the lines whose starting and ending character is a digit. Also print the count of these lines(onlythe number) on a new line at the last in your output. The field separator in the file is comma (,).

BEGIN{
	FS=",";
	count=0;
}
/^[0-9].*[0-9]$/{
	print $0;
	count+=1;
}
END{
	print count;
}
