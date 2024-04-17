#!/bin/awk -f

# You perform a survey on students to determine the effects of gender,race, parent's education, lunch type, and test preparation     courses on exam performance of math, reading, and writing.
# Perform the following statistics on the data:
# - Print the mean score for math, reading, and writing scores.
# - Print the percentage of students who are female and male.
# - Print the percentage of students whose parents have gone to college.
# - Find the probability that a student selected at random gets a mean score of 80 or more in all three subjects given that the      student's parents have gone to college.
# - Find the probability that a student selected at random gets a mean score of 80 or more in all three subjects given that the      student's parents have not gone to college.
# Statistically, $P(A|B) = \frac{P(A \cap B)}{P(B)}$.
# Input Format
# "gender","race_ethnicity","parental_level_of_education","lunch","test_preparation_course","math_score","reading_score",            "writing_score"
# Sample Input
# "female","group B","bachelor's degree","standard","none","72","72","74"
# "female","group C","some college","standard","completed","69","90","88"
# "female","group B","master's degree","standard","none","90","95","93" 
# "male","group A","associate's degree","free/reduced","none","47","57","44"
# "male","group C","some college","standard","none","76","78","75"
# "female","group B","associate's degree","standard","none","71","83","78"
# "female","group B","some college","standard","completed","88","95","92"
# "male","group B","some college","free/reduced","none","40","43","39"
# "male","group D","high school","free/reduced","completed","64","64","67"
# Sample Output
# math average    68.56
# read average    75.22
# write average   72.22
# female percent  55.56
# male percent    44.44
# parent college% 88.89
# P(>79|college)  37.50
# P(>79|~college) 0

BEGIN{
	FS=",";
	OFMT="%.2f";
	OFS="\t";
}
{
	gsub(/"/,"",$6)
	gsub(/"/,"",$7)
	gsub(/"/,"",$8)
	math+=$6
	reading+=$7
	writing+=$8
	mean=($6+$7+$8)/3

	if($1 ~ /female/){
		female++
	}

	if($3 ~ /school/){
		parentSchool++
		if(mean>=80){
			stu_80_school++
		}	
	}
	else{
		if(mean>=80){
			stu_80_college++
		}
	} 
}
END{
	print "math average",math/NR
	print "read average",reading/NR
	print "write average",writing/NR
	print "female percent",female/NR*100
	print "male percent",(NR-female)/NR*100
	print "parent college%",(NR-parentSchool)/NR*100
	print "P(>79|college)",(stu_80_college/(NR-parentSchool))*100
	print "P(>79|~college)",(stu_80_school/parentSchool)*100

}
