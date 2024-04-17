#!/bin/usr/awk -f

# You have a csv file named groceries.csv that contains a list of grocery items and their unit cost. The two fields are separated by comma(,). This file will be given as input to your Awk script.
# Write an Awk script that takes two arguments(command line) named item and n, where item is the item name and n is the number of    units,then prints the total cost of purchasing n units of the item item. The script prints only a number. i.e. you need to find  the item cost of the item given in argument while parsing the input file.
# Note: You can directly use these variables with the given name in your Awk script. Assume that the item given in the argument will always be present in the csv file.
# Sample(suppose your script is named as yourScript.awk)
# Here the cost of 3 Tomatoes needs to be calculated. Cost of one Tomato is 40 as seen from the csv file. So total cost = 3*40


BEGIN{
	FS=",";
	item = ARGV[1]
	n = ARGV[2]
	delete ARGV[1]
	delete ARGV[2]
}
{
	if($2 ~ item){
		total_cost = $3 * n
	    }
}
END{ 
	print total_cost
}
