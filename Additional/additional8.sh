#!/bin/bash

# Write a function `parent-of-parent` in the script  to return the parent of parent directory of the file/directory that is passed asan argument.

export file="home/suvrat344/week1/script1.sh"

parent_of_parent(){
	dirname "$(dirname "$file")"	
}
parent_of_parent
