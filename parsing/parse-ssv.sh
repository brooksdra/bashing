#!/bin/bash

## echo $json | jq -r '.body[] | "\(.name), \(.value), \(.type)"'
## cat file.txt | tr '\n' ' ' > temp.txt

while read -r line; do
    # Split the line into an array of words, using a space as the delimiter.
    echo $line
    words=($line)
    # Loop through the words, and print each group of three words on a new line.
    for ((i=0; i < ${#words[@]}; i+=3)); do
        echo "${words[i]} ${words[i+1]} ${words[i+2]}"
    done
done < file.txt