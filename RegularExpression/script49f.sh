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
# Use the cut command to extract the continents (including the one white space in the beginning) of the first 5 lines of file.txt and# store it in another file named continent.txt
# Write your answer as a script.

cut -d ";" -f2 file.txt | head -n5 > continent.txt
