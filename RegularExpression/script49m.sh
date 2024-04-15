#!/bin/bash

# You are given an access4.log file to your standard input similar to previous question. You are to print the count of the hours at  which requests were sent along with the hour.
# The output should be in descending order of the count of the requests per hour.
# The output should only show hours having more than 9 requests.
# **Sample Output**
# 634 04
# 29 00
# 22 14
# 21 06
# 17 05
# 14 03
# 12 10
# 12 09
# 12 07
# 12 01
# 10 12
# 10 11

cut -d ":" -f2 access4.log | sort | uniq -c | sort -nr | grep -oE "[0-9]{2,} [0-9]*"
