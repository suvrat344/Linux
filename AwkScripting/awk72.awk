#!/bin/usr/awk -f

# Write an awk script to find unintentionally repeated (duplicate) words in the file 'myfile.txt'. For example,sometimes a file can  contain sentences like "The the building is beautiful". Print the repeated words on the order of occurence at one per line

{
	for (i=1;i<NF;i++){
		words[$i]++
		if(words[$i]==2){
			print $i
			}
	}
}	
