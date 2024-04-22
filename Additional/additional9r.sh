#!/bin/bash

# It is often required to run some basic statistics on a file. Write a bash script  using getopts method such that options,          # -l will  print the total number of lines in the files, and
# -s sorts by column number provided.
# Sample Input
# Company,Date,Amount
# CompanyA,2020-04-29,31211.18
# CompanyA,2021-09-20,2366.91
# CompanyA,2021-10-23,3491.17
# CompanyA,2021-04-04,14304.44
# CompanyA,2021-11-01,21679.58
# CompanyA,2022-09-06,16277.49
# CompanyA,2021-12-14,29527.37
# CompanyA,2023-03-01,1447.83
# CompanyA,2020-08-22,30383.23
# **Sample output**
# $ ./script.sh -l financial_records.csv
# Total lines in financial_records.csv is 50
# $ ./script.sh -s2 financial_records_short.csv
# Company,Date,Amount
# CompanyA,2020-04-29,31211.18
# CompanyA,2020-08-22,30383.23
# CompanyA,2021-04-04,14304.44
# CompanyA,2021-09-20,2366.91
# CompanyA,2021-10-23,3491.17
# CompanyA,2021-11-01,21679.58
# CompanyA,2021-12-14,29527.37
# CompanyA,2022-09-06,16277.49
# CompanyA,2023-03-01,1447.83
# Template
#!/bin/bash
# filename=${@: -1}
# while getopts "ls:" options; do
# case "${options}" in
# l)
# # enter your command to print in the correct format here
# ;;
# s)
# arg=${OPTARG} # argument obtained for option -s
# # enter your command to print in the correct format here
# ;;
# esac
# done

filename=${@: -1}
while getopts "ls:" options
do
	case "${options}" in
		l)
			echo "Total lines in $filename is $(wc -l < "$filename")"
			;;
		s)
			arg=${OPTARG}
			sort -t ',' -k "$arg,$arg" "$filename" -n
			;;
	esac
done
