#!/bin/awk -f

# EmployeeDetails1.csv file contains the Employee ID, Employee Name, Leaves taken this year and Gender,of all the employees working  in a company XYZ, born between the years 1997 and 2000 (including both). Total employees in the company is less than 1000.
# The employee ID is of the format: DepartmentYearOfBirthCode Where:
# - Department is the department to which the employee belongs to (Department A to G)
# - YearOfBirth is the birth year of the employee (Eg. 2000)>
# - Code is a three digit number unique to each employee.
# For e.g. B1997122 is employee id of an employee working in department B, born in the year 1997 having unique code as 122. The emailID of an employee is in the format EmployeeID@xyz.com, where EmployeeID is the employee id of the employee.
# For example email id of Ram having employee id as A1998001 is A1998001@xyz.com. Email ids are case sensitive.
# Write an awk script takes the file EmployeeDetails.csv as input and prints the name of the employee(s) with lowest number of leavestaken this year. If there are more than one employees with the lowest number of leaves,print the name of each employee on a new line.
 
BEGIN{
	FS=",";
}
{
	if(NR==1){
		min_leave=$3
		count=0
		name[count]=$2
		next
		}
	if($3 < min_leave){
		min_leave=$3
		delete name
		count=0
		name[count]=$2
		}
	else if($3 == min_leave){
		count=count+1
		name[count]=$2
		}	
}
END{
	for(i=0;i<=count;i++){
		print name[i]
	}
}

	
	
