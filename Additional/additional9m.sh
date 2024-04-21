#!/bin/bash

# Write a bash script  to find the file that is located in the maximum depth in the directory ./data and print its content.Assume    there is at least on file in the directory ./data and only file is located in the maximum depth.
# Sample Input Structure
# $ tree
# ./
# └── data/
# ├── a/
# │ ├── c/
# │ │ └── h
# │ ├── d/
# │ └── g
# ├── b/
# │ ├── c/
# │ └── d/
# └── f
# $ cat ./data/f
# This is f
# $ cat ./data/a/g
# This is g
# $ cat ./data/a/c/h
# This is h
# Sample Output
# This is h
# Here, a, b, c, d, and data are the directories, and the f, g and h are the files. Among the files "h" is located in the maximum    depth

find ./data | awk -F '/' '{
	if(NF>maxdepth){
		maxdepth=NF
		file=$0
	}
}
END{
	print file
}' | xargs cat
