#!/bin/bash

# Write a bash command using find that copies all the files within the directory /source to /destination. Note that all the files    within all hierarchy have distinct names and should be copied to /destination.

find ./source -type f -exec cp {} ./destination \;
