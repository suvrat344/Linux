#!/bin/sed -f

# Write a SED script  to add a new column in the beginning with entry "S1" or "S2". "S1" occurs periodically every 3rd line starting from first line, while rest is "S2"
# **Sample Input**
# Ajay,Chennai,Sales,40
# Mona,Mumbai,Sales,60
# Rajan,Patna,Buisness,50
# Narayanan,Kochi,Sales,30
# Anuj,Pune,Sales,70
# Mohan,Jaipur,Buisness,70
# Naga,Vizag,Sales,45
# Chaitrali,Nagpur,Sales,90
# Sanjana,Delhi,Buisness,80
# Maitreyi,Bhopal,Sales,30
# Sreni,Bangaluru,Sales,20
# **Sample Output**
# S1,Ajay,Chennai,Sales,40
# S2,Mona,Mumbai,Sales,60
# S2,Rajan,Patna,Buisness,50
# S1,Narayanan,Kochi,Sales,30
# S2,Anuj,Pune,Sales,70
# S2,Mohan,Jaipur,Buisness,70
# S1,Naga,Vizag,Sales,45
# S2,Chaitrali,Nagpur,Sales,90
# S2,Sanjana,Delhi,Buisness,80
# S1,Maitreyi,Bhopal,Sales,30
# S2,Sreni,Bangaluru,Sales,20

1~3s/^/S1,/
1~3!s/^/S2,/
