#!/bin/bash

# The website has weather data about some cities in **India** as a snapshot at particular instant in time. Please,explore the websiteto know what data each page consists.
# Write a bash script using `jq` to parse and filter json data from weather API website.
# The script provides options below.
# | Option | Arg | Description | Output format |  Example format |
# | :----:| :------: | :---------| :----- | :-------- |
# |  | ` city-name ` | city name (required), the output city name should match API data | | |
# | ` -C ` | `min` | minimum temperature | json object | `{"name": <city-name>, "temp_min": <double>}` |
# |  | ` max ` | maximum temperature | json object | `{"name": <city-name>, "temp_max": <double>}` |
# |  | ` current ` | current temperature (`temp`) and it's Fahrenheit representation | json object | `{"name": <city-name>, "temp": <double>, "F": <double>}` |
# | ` -W ` | | wind speed & it's square root | json object | `{"name": <city-name>, "speed": <double>, "sqrtspeed": <double>}`|
# | ` -S ` |  | city name, date, sunrise and sunset time in HH:MM:SS | json array | `[<city-name>, DD/MM/YYYY, HH:MM:SS, HH:MM:SS]` |
# Weather API URL: [http://weather.local/api/v1/city/<city\-name>.json](http://weather.local/api/v1/city/<city-name>.json)
# Some Rules :
# * The output must be pure ascii
# * The output indenation must 4 spaces for json object.
# Interpretation :
# ~$ ./script.sh chennai -C min
# {
#	"name": "Park Town",
#	"temp_min": 31.67
# }

city=$1
flag=$2
parameter=$3

if [[ $flag == "-C" ]]
then
	if [[ $parameter == "min" ]]
	then
		cat $city.json | jq '{"name":.name,"temp_min":.main.temp_min}'
	elif [[ $parameter == "max" ]]
	then
		cat $city.json | jq '{"name":.name,"temp_max":.main.temp_max}'
	else
		cat $city.json | jq '{"name":.name,"temp":.main.temp,"F":(.main.temp * 9/5 + 32)}'
	fi
elif [[ $flag == "-W" ]]
then
	cat $city.json | jq '{"name":.name,"speed":.wind.speed,"sqrtspeed":.wind.speed | sqrt}'
else
	cat $city.json | jq '[.name,(.dt | strftime("%d/%m/%y")),(.sys.sunrise | strftime("%H:%M:%S")),(.sys.sunset | strftime("%H:%M:%S"))]'
fi
