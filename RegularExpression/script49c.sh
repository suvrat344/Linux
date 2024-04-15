#!/bin/bash

# The file  `file.txt` contains three fields in a line in the order
# - Country
# - Capital
# - Continent
# The first two fields country and capital are separated by a comma and the last two fields capital and continent are separated by a semicolon.
# The command below prints the file.
# $ cat file.txt
# India, New Delhi; Asia
# Czech Republic, Prague; Europe
# South Korea, Seoul; Asia
# Uzbekistan, Tashkent; Asia
# Mozambique, Maputo; Africa
# United Arab Emirates, Abu Dhabi; Asia
# Papua New Guinea, Port Moresby; Oceania
# Estonia, Tallinn; Europe
# Trinidad and Tobago, Port of Spain; South America
# Ghana, Accra; Africa
# Write a bash script using `cut` to redirect only the countries and its capitals of `file.txt` in the format `Country, Capital` (Eg.`India, New Delhi`) to file named `out3.txt`.

cut -d ';' -f1 file.txt > out3.txt
