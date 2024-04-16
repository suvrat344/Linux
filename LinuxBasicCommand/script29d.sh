#!/bin/bash

# Write a bash script to find the day of the week of April 1st of 2024 and print it to the output in full format with first letter   capitalised.Ex: 'Wednesday'
# Hint : Use 'date' command

date -d "2024-04-01" +%A
