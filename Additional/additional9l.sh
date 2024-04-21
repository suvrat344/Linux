#!/bin/bash

# Write a bash script  to extract and print the content of the file `myfile` that is present somewhere in the file hierarchy of      compressed tar file `data.tar.gz`.Assume there is only one file with the name `myfile`.

tar -xf data.tar.gz
cat $(find -name 'myfile') 
