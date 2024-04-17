#!/bin/awk -f

# Write an awk script  to calculate class average marks of each subject and print each subject average in a new line.
# - The first line of output represents the class average of Mathematics.
# - The second line of output represents the class average of Physics.
# - The third line of output represents the class average of Chemistry.
# The marks are given in the comma separated file `marks3.csv`.

BEGIN{
	FS=","
	maths=0
	physics=0
	chemistry=0
}
(NR > 1){
	maths+=$2
	physics+=$3
	chemistry+=$4
}
END{
	print maths / (NR -1)
	print physics / (NR -1)
	print chemistry / (NR -1)
}
