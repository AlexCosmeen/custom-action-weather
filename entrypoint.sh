#!/bin/sh

set -e

LAT="$1"
LON="$2"
API_KEY="$3"

RESPONSE=$(curl -s "https://api.openweathermap.org/data/2.5/weather?lat="${LAT}"&lon="${LON}"&appid="${API_KEY}"")

echo "$RESPONSE"
echo "---------------------------------"
TEMPERATURE=$(echo "$RESPONSE" | jq -r '.main.temp') >> "$GITHUB.OUTPUT"
CONDITION=$(echo "$RESPONSE" | jq -r '.weather[0].description') >> "$GITHUB.OUTPUT"

echo "$TEMPERATURE"
echo "$CONDITION"