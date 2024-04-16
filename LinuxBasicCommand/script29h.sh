#!/bin/bash

# The string "colors" contains the name of the colors.Convert it to array of colors.Your task is to write a bash script to remove allvowels present in the array and displays them.
# Example : 'colors="violet indigo blue green yellow orange red"
# Use the snippet below to convert a space separated string to an array.
# '''bash
# arr=($str)
# '''

colors="violet indigo blue green yellow orange red"
arr=($colors)
echo ${arr[@]//[aeiou]/}
