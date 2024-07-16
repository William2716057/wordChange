#!/bin/bash

# Check if file provided
if [ "$#" -ne 1 ]; then
	echo "Usage: $0 filename"
	exit 1
fi

filename=$1

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
		echo -n "$modified_word "
		modified_word >> $filename
	done
	echo
done < "$filename"
