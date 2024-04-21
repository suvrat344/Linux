#!/bin/bash

# Write a script to find the UIDs of the users belonging to the largest group. Assume there is only one largest group.
# The file `group` in the current working directory stores the group information of the system in the format given below             # groupname:x:GID:members(separated by comma)
# An example line from `group` file is given below                                                                                   # student:x:214:ram,ahmed,robert,seema
# The file `passwd` in the current working directory contains the user information. The format of the file is given below            # username:x:UID:GID:description:home_directory:full_path_to_shell
# Note: sort the output before printing

awk -F":" '{
	n=split($NF,tmp,",")
	if(n > map[maxgroup]){
		maxgroup=$1
		map[$1]=n
		users[$1]=$NF
	}
}
END{
	print users[maxgroup]
}' group | tr ',' '\n' | xargs -I {} grep -Fw {} passwd | cut -d ":" -f3 | sort
