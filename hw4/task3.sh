#!/bin/bash
cd ./hw4/

# part a
# gawk -F, '$3==2 && $13 ~ /^S/ {print $0}' titanic.csv

# part b
# sed 's/female/F/g; s/male/M/g'

# part c
# gawk -F, '{if($7 != "") {sum+=$7;count+=1}} END  {print sum/count} '


# Output
# a | b | c

gawk -F, '$3==2 && $13 ~ /^S/ {print $0}' titanic.csv | sed 's/female/F/g; s/male/M/g' | gawk -F, '{if($7 != "") {sum+=$7;count+=1}} END  {print sum/count}'