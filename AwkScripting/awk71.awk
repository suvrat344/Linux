#!usr/bin/awk -f

# Write an awk script that reads a value n from the stdin within awk script, then prints the sum of odd numbers and sum of even      numbers each on a separate line respectively, from the set of natural numbers from 1 to n (ends inclusive).

BEGIN{
	getline n < "-";
	close("-");
	s_even=0;
	s_odd=0;

	for (i=1;i<=n;i++){
		if(i%2 == 0){
			s_even = s_even + i
		}
		else{
			s_odd+=i
	        }
	}

	print s_even
	print s_odd
}
