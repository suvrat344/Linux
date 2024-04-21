#!/bin/bash

# Write a script to extract and print the link of all anchor tag present in the standard input.
# Assume all `a` tags start and end in the same line.
# Example:  In the text
# <a href="https://onlinedegree.iitm.ac.in/">IITM BS Degree Programme</a>
# https://onlinedegree.iitm.ac.in/ is the link to the site.
# Note: Assume the starting a tag and href attribute value will be on the same line.

grep -o 'href="[^"]*"' $1 | cut -d '"' -f2 
