#!/bin/bash


# A shell variable named "TOTALCOST" contains a string which is in the format "XYZ_ABC_PQR",where "XYZ","ABC" and "PQR" are three    digit numbers.Underscore '_' is used to separate the three digit numbers.
# Write a bash script that replaces all the underscore ('_') with commas (',') in the variable 'TOTALCOST' and displays  the final   string in  the screen.
# Example : 'TOTALCOST=198_890_128
# Output:
# '''
# 198,890,128
# '''

TOTALCOST="198_890_128"
echo ${TOTALCOST//_/,}
