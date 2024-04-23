#!/bin/bash

# Write a bash script  using sed to print the contents of file `$filename` in the format `<line number>:<contents>`.

sed '=' alphabet3.txt | sed 'N;s/\n/:/'
