#!/bin/sed -f

# You have been given a minified JSON string.
# You have to write a sed script that will pretty print the JSON string.
# The important data is stored as an JSON object in the key "data".
# Print only the data object.
# **Sample Input**:
# { "data": { "name": "John", "age": 30, "city": "New York" } }
# **Sample Output**:
# {
#	"name": "John",
# 	"age": 30,
#	"city": "New York"
# }
# Assume there is no nested JSON object.
# Bonus: Can you write a sed script that works for nested JSON objects?
# Also look into the `jq` command.

s/{ "data": //
s/}$//
s/{/{\n\t/g
s/}/\n}/g
s/,/,\n\t/g
