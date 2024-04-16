#!/bin/bash

# We created some directories and change our current working directory using the cd command as given by the sequence of commands     below.Write a bash command to make the directory "level2" as your current working directory. i.e. after executing your solution, if  we execute the command "pwd" it should return the path of the directory "level2".
# Write your solution as a single line bash command.
# cd /
# mkdir level
# cd level
# mkdir level1
#cd level1
# mkdir level2
# cd ..
# cd ..

cd level/level1/level2/
echo $PWD
