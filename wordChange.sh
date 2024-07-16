#!/bin/bash

# Check if file provided
if [ "$#" -ne 1 ]; then
	echo "Usage: $0 filename"
	exit 1
fi

filename=$1

temp_file=$(mktemp)

# Read each line of file
while IFS= read -r line; do
# Process each word in line
	for word in $line; do
	# move last character to beginning of word
		if [ ${#word} -gt 1 ]; then
			modified_word="${word: -1}${word:0: -1}"
		else
			modified_word="$word"
		fi
		# print modified word
		processed_line="$processed_line $modified_word"
	done
	echo "$processed_line" >> "$temp_file"

done < "$filename"

mv "$temp_file" "$filename"
