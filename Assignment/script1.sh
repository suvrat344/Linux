#!/bin/bash

# Write a script to download the file `sample_1.txt` from [http://local.server](http://local.server) and store it as `s1.txt`.
# Hint: Use `wget` command
# Optional
# If you are able to achieve the above task then,
# - Try to download the file `sample_2.txt`, `sample_3.txt` and `sample_4.txt`.
# - Use `cURL` to achieve the same.


wget -O s1.txt http://local.server/sample_1.txt
curl -o s2.txt http://local.server/sample_2.txt -o s3.txt http://local.server/sample_3.txt -o s4.txt http://local.server/sample_4.txt

