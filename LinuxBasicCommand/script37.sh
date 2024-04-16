#!/bin/bash

# An observer wrote a script named createTwingle that produces a file twingle containing names of all the visible stars present in   the sky at that instant. Every line in the file twingle is the name of a star. In your current directory the file twingle may or may not be present.
# If the file twingle is present in the directory then print the number of lines in the file, else execute the command createTwingle it will create the file twingle in the current working directory then print the number of lines in the file twingle.
# Hint: Try to use operators.

wc -l twingle || (createTwingle twingle && wc -l twingle)
