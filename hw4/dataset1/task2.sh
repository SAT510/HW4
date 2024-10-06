#!/bin/bash

cd ./hw4/dataset1

# Task 2 a
# grep -l "sample" * | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -w); [ "$count" -ge 3 ] && echo "{}" $count '

# Task 2 b
# sort -k2,2nr | gawk '{print $1}'

# Task 2 c
# sed 's/file_/filtered_/g'

# Output: a | b | c
grep -l "sample" * | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -w); [ "$count" -ge 3 ] && echo "{}" $count ' | sort -k2,2nr | gawk '{print $1}' | sed 's/file_/filtered_/g'