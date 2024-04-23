#!/bin/bash

# Consider
# ## Iris flower data set
# * Source
# - Creator : R. A. Fischer
# - [https://archive.ics.uci.edu/ml/datasets/iris](https://archive.ics.uci.edu/ml/datasets/iris)
# ### Attribute Information
# 1. sepal length in cm
# 2. sepal width in cm
# 3. petal length in cm
# 4. petal width in cm
# 5. class:
# 	- Iris Setosa
# 	- Iris Versicolour
#	- Iris Virginica
# The dataset is stored in a table in sqlite3 database.
# * Database name : ` iris-flower.sqlite3 `
# * Table name : ` iris `
# * Table Schema : ` CREATE TABLE iris (id INTEGER PRIMARY KEY AUTOINCREMENT, sepal_length REAL, sepal_width REAL, petal_length REAL,petal_width REAL, class VARCHAR(20)); `
# * Find the database in this directory : ` /opt/iris `
# Directory Structure :
# ```tree
# /opt/
# 	|_ iris/
# 		|_ iris-flower.sqlite3
# ```
# Write a bash script to process iris data and return mean of a particular column of the dataset.
# The script will be invoked as follows:
# ~$ ./script.sh <class> <feature_name>
# Argument 1 :
# * ` <class> `
#	- ` setosa ` : For class Iris Setosa
#	- ` versicolor ` : For class Iris Versicolour
#	- ` virginica ` : For class Iris Virginica
# Argument 2 :
# * ` <feature_name> `
#	- ` sepal_length `
# 	- ` sepal_width `
# 	- ` petal_length `
# 	- ` petal_width `
# The output must be ` jq ` parsable.
# * ` jq ` parsable output :
# {"class": <class>, "feature": <feature_name>, "mean": <mean>}
# * ` <class> ` : This needs to be consistent with class names in sqlite3 database.
# * ` <feature_name> ` : Name of the feature.
#      - If feature name in sqlite3 database is ` sepal_length ` this value should be ` Sepal length `.
# * ` <mean> ` : Mean of rows of ` <feature_name> ` over ` <class> `
# Round off  ` <mean> ` up to 3 decimal places.
# Sample Example
# ./script.sh setosa sepal_length
# * Output
# {"class":"Iris-setosa","feature":"Sepal length","mean":5.006}
# Hint :
# * Use sql from command line to get the desired data.
# * Use  ` echo ` to format the output in ` jq ` parsable form.

class1=$1
feature=$2
modified_name="${feature/_/ }"
modified_name="${modified_name^}"
sum=0
n=0

while IFS="," read -r id sepal_length sepal_width petal_length petal_width class
do
	if [[ $feature == "sepal_length" ]]
	then
		sum=$(awk "BEGIN {print $sum + $sepal_length}")
		(( n++ ))
	elif [[ $feature == "sepal_width" ]]
	then
		sum=$(awk "BEGIN {print $sum + $sepal_width}")
		(( n++ ))
	elif [[ $feature == "petal_length" ]]
	then
		sum=$(awk "BEGIN {print $sum + $petal_length}")
		(( n++ ))
	else
		sum=$(awk "BEGIN {print $sum + $petal_width}")
		(( n++ ))
	fi
done < <(sed "1d" iris.csv | sed -n "/$class1/p")

mean=$(echo "scale=3;$sum/$n" | bc)
echo '{}' | jq --arg class "Iris-$class1" --arg feature "$modified_name" --arg mean "$mean" '. + {class: $class, feature: $feature, mean: $mean}'



# class=$1
# feature=$2
# modified_name="${feature/_/ }"
# modified_name="${modified_name^}"
# sum=0
# n=0

# db_path="/opt/iris/iris-flower.sqlite3"
# table_name="iris"

# query="SELECT AVG($feature) FROM $table_name WHERE class='Iris-$class';"
# mean=$(sqlite3 "$db_path" "$query")
# echo '{}' | jq --arg class "Iris-$class" --arg feature "$modified_name" --arg mean "$mean" '. + {class: $class, feature: $feature, mean: $mean}'
