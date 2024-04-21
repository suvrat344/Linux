#!/bin/sed -f

# Write a SED script  to mask the first 6 digits of the phone numbers with asterisks, such that only last four digits of phone numberof ten digits are visible.

s/[0-9]\{6\}\([0-9]\{4\}\)/******\1/
