#!/bin/bash

# Write a script  to execute the bash script `run.sh` and print "SUCCESS" if it exits with status 0, otherwise print "FAIL" Note that# the file may not have execute permission.
# Note: run.sh may not available in the current directory, you have to handle it

chmod 777 run.sh

if ./run.sh &>/dev/null
then
	echo "Success"
else
	echo "Fail"
fi
