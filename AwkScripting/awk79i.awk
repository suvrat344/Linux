#!/bin/awk -f

# The ` uniq ` command in the Linux will not print the adjacent duplicate lines. Write an AWK script  to the same.

{
	if($0 != prev_line){
		print $0
	}
	prev_line = $0
}
