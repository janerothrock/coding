#!/bin/bash

# letters=("a" "b" "c" "d")

# for i in ${letters[@]}; do
#     echo arr_letters{}



# Assign the letters a-d as strings in an array
letters=("a" "b" "c" "d")

# Loop through the array with index
for i in "${!letters[@]}"; do
  letter="${letters[$i]}"
  # Print the letter (i + 1) times
  for ((j = 0; j <= $i; j++)); do
    echo "$letter"
  done
  # Print an empty line to separate blocks
  echo ""
done

# Part 2
# Loop through the array with index
for i in "${!letters[@]}"; do
  letter="${letters[$i]}"
  # Print the letter (i + 1) times on the same line
  for ((j = 0; j <= $i; j++)); do
    echo -n "$letter" #Suppress newline
  done
  echo ""
done