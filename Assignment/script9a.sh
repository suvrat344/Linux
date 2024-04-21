#!/bin/bash

# Write a script  that takes a filename as argument and print only the MD5 hash value.
# The expected output should be
# ```
# 916f4c31aaa35d6b867dae9a7f54270d
# ```

md5sum $1 | cut -d " " -f1
