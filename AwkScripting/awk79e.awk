#!/bin/usr/awk -f

# Write an awk script that can list nth Fibonacci number where ` n ` is a command line argument to the script.
# Note: The sequence is 1,1,2,3,5,..., and the first and the second value are 1 and 1.

BEGIN{
	n = ARGV[1]
	fib1 = 1
	fib2 = 1

	if(n==1){
		print fib1
	}
	if(n==2){
		print fib1,fib2
	}
	if(n>2){
		result = fib1 "," fib2
		for(i=1;i<=n-2;i++){
			temp = fib1 + fib2
			fib1 = fib2
			fib2 = temp
			result = result "," temp
			}
		print result
		}
}
