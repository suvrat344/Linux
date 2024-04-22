#!/bin/bash

# The history of the commands used in the terminal are saved in ~/.bash_history. Assume that such file is currently stored in your   # working directory as bash_history.txt. Write a **bash script**  to find the top 5 commands with their frequency counts  and        # percentage usage.
# Hint: In one of the solution strategies, a shell variable which stores the total count of all commands from the file should be     # declared and then subsequently used in the script. For successful test cases, ensure that the output format should be the same as  # the one shown in the **Desired output** section of the question.
# **Sample input**
# exit --help
# $$
# ps
# ps |grep "$$"
# $$
# ps |grep $$
# man $$
# man shell varialbe
# man shell
# man bash
# man bash|grep $$
# man bash
# echo 123|rev
# echo 123 | rev
# man rev
# echo 123 | rev
# $$
# ps
# $1
# exit
# **Sample output**
# $$: 3: 15%
# echo: 3: 15%
# exit: 2: 10%
# man: 7: 35%
# ps: 4: 20%

total=$(wc -l < bash_history.txt)
awk -v total=$total '{
	comm[$1]++
}
END{
	for(key in comm){
		print key": " comm[key]": " comm[key]/total*100 "%"
	}
}' bash_history.txt | sort -t ":" -k2,2 -nr | head -n5 | sort
