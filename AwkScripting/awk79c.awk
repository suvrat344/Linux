#!/bin/awk -f

# EmployeeDetails.csv file contains the Employee ID, Employee Name, Leaves taken this year and Gender,of all the employees working ina company XYZ, born between the years 1997 and 2000 (including both). Total employees in the company is less than 1000.
# The employee ID is of the format: DepartmentYearOfBirthCode Where:
# - Department is the department to which the employee belongs to (Department A to G)
# - YearOfBirth is the birth year of the employee (Eg. 2000)>
# - Code is a three digit number unique to each employee.
# For e.g. B1997122 is employee id of an employee working in department B, born in the year 1997 having unique code as 122. The emailID of an employee is in the format EmployeeID@xyz.com, where EmployeeID is the employee id of the employee.
# For example email id of Ram having employee id as A1998001 is A1998001@xyz.com. Email ids are case sensitive.
# Write an awk script that takes input as file EmployeeDetails.csv and calculate and prints the average number of leaves taken by theemployees born in each year from 1997 to 2000(both 1997 and 2000 included). The average for each year should be printed on a newline starting from the year 1997 to 2000 in the same sequence i.e. your script should print 4 lines of output always one for each year    1997,1998,1999 and 2000. If there are no employees born in some year, print 0 for that years average leaves. Print only the integer  part of the average(i.e. if the average is 7.3333 print 7). Use int() function to get the integer part of any float number.

BEGIN{
	FS=",";
	s_1997 = 0;c_1997=0;av_1997=0
	s_1998 = 0;c_1998=0;av_1998=0
	s_1999 = 0;c_1999=0;av_1999=0
	s_2000 = 0;c_2000=0;av_2000=0
}
{
	if($1 ~ /1997/){
           s_1997+=$3
	   c_1997++
	}
	else if($1 ~ /1998/){
	   s_1998+=$3
	   c_1998++
	}
	else if($1 ~ /1999/){
	   s_1999+=$3
	   c_1999++
	}
	else if($1 ~ /2000/){
	   s_2000+=$3
	   c_2000++
	}	
}
END{
	if(c_1997 != 0){
		av_1997 = s_1997 / c_1997
	}
	if(c_1998 != 0){
		av_1998 = s_1998 /c_1998
	}
	if(c_1999 != 0){
		av_1999 = s_1999 /c_1999
	}
	if(c_2000 != 0){
		av_2000 = s_2000 /c_2000
	}
	print int(av_1997)
	print int(av_1998)
	print int(av_1999)
	print int(av_2000)
}
