#!/bin/bash

# Write a bash script that accepts an integer argument say ` n ` and prints the below pattern for `n` lines.
# For example,
# In the below sample, the value of `n` is 5
# ```
# *
# **
# ***
# ****
# *****
# ```
# In the below sample, the value of `n` is 4.
# ```
# *
# **
# ***
# ****
# ```

for ((i=1;i<=$1;i++))
do
	for((j=1;j<=$i;j++))
	do
		echo -n "*"
	done
	echo 
done
