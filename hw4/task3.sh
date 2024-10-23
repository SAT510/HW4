#!/bin/bash

# part a
# gawk -F, '$3==2 && $13 ~ /^S/ {print $0; if($7 != "") {sum+=$7;count+=1}} END {print "Average Age:", sum/count}' titanic.csv

# part b
# sed 's/female/F/g; s/male/M/g'

# Output
# a | b 

gawk -F, '$3==2 && $13 ~ /^S/ {print $0; if($7 != "") {sum+=$7;count+=1}} END {print "Average Age:", sum/count}' titanic.csv | sed 's/female/F/g; s/male/M/g'
