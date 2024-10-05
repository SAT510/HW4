#!/bin/bash

grep -l "sample" file* | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); if [ "$count" -ge 3 ]; then size=$(wc -c < "{}"); echo "$(echo "{}" | sed "s/file_/filtered_/") $count $size"; fi' | gawk '{print $1, $2, $3}' | sort -k2,2nr -k3,3nr | awk '{print $1}'


#part 1 
# grep -l "sample" file* | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); [ "$count" -ge 3 ] && echo "{}"'


#part 2
# grep -l "sample" file* | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); if [ "$count" -ge 3 ]; then size=$(wc -c < "{}"); echo "{} $count $size"; fi' | gawk '{print $1, $2, $3}' | sort -k2,2nr -k3,3nr | awk '{print $1}'


#Part3
# grep -l "sample" file* | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); if [ "$count" -ge 3 ]; then size=$(wc -c < "{}"); echo "$(echo "{}" | sed "s/file_/filtered_/") $count $size"; fi' | gawk '{print $1, $2, $3}' | sort -k2,2nr -k3,3nr | awk '{print $1}'


#Extra command to verify if the sorting of files is correct
#grep -l "sample" file* | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); if [ "$count" -ge 3 ]; then size=$(wc -c < "{}"); echo "$(echo "{}" | sed "s/file_/filtered_/") $count $size"; fi' | gawk '{print $1, $2, $3}' | sort -k2,2nr -k3,3nr | awk '{print $1, $2}'


