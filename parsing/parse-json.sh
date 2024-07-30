#!/bin/bash

# Get the json file
json_file=file.json

# Load the json file into a variable
json_data=$(cat "$json_file")

# Parse the json data
words=$(jq -r '.body[] | "\(.name)(\(.type))=\(.value)"' <<< "$json_data")
lines=$(sed 's/ /\n/g' <<< "$words")
while read line; do 
  echo "$line" 
done <<< "$lines"



