#!/bin/bash

# Sanjay is a professional photographer who capture photos of items for various clients. The photos database has thousands of photos collected each year. The photographs are stored in jpg format using `YYYYMMDD_HHMMSS.jpg` naming convention. For his backup purpose  he wants to organise his data by moving the photos to a new directory created using monthYear (Ex: Jan2021) format (thus 12 directoryfor each year).
# Write a shell script which will create folders based on the image name and creates and moves it to the respective month directory.
# - Refer `date --help` or `man date` to get the format of month and year.

while read -r photo
do
	ymd=${photo%_*}
	folder=$(date -d $ymd +%b%Y)
	mkdir -p $folder 
	mv $photo $folder
done < <(ls *.jpg)

