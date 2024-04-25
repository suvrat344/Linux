#!/bin/bash

# Write a script  that takes a filename as argument and print only the hash value.

sha256sum "$1" | cut -d" " -f1
