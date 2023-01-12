#!/bin/bash

file1="${PARAM_FI1}"
file2="${PARAM_FI2}"

# Create an empty array to store the unique words from file1
declare -a uniqueWords

# Loop through each line in file1
while read -r line; do
  # Loop through each word in the line
  for word in $line; do
    # Check if the word is already in the array of unique words
    if [[ ! " ${uniqueWords[*]} " =~  ${word}  ]]; then
      # If not, add it to the array
      uniqueWords+=("$word")
    fi
  done
done < "$file1"

# Loop through each line in file2
while read -r line; do
  # Loop through each word in the line
  for word in $line; do
    # Check if the word is in the array of unique words from file1
    if [[ " ${uniqueWords[*]} " =~  ${word}  ]]; then
      # If it is, print the word and exit with a non-zero status
      echo "Duplicate repository found: $word"
      exit 1
    fi
  done
done < "$file2"

# If no duplicate words are found, exit with a status of 0
echo "No duplicate repository found."
exit 0
