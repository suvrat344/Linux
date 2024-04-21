#!/bin/bash

# Mine the logs given in the file myauth2.log present in the current working directory to print all the usernames  to which user     student switched to using su command. 
# Note: switching back to the previous user should not be accounted.
# Hint: Basically you have to grep all the lines where 'su' command is run successfully and fetch the username to which the user     student switched to.

grep "\bsu\b" myauth2.log | grep -v "FAILED" | grep -oE "\(to .*\)" | grep -oE "\b\w*\b" | grep -v "to"
