#!/bin/bash

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
# Write a bash script to print all the countries in the file `file.txt` sorted alphabetically by name in reverse order.
# (Hint: Use the command `sort -r` to sort in reverse order)

cut -d "," -f1 file.txt | sort -r
