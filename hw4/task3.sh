#!/bin/bash
gawk -F, '$3 == 2 && $13 ~/^S/ {print $0}' titanic.csv | sed 's/\<male\>/M/g; s/\<female\>/F/g'