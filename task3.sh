#!/bin/bash
#  Unique visitors (IP)
uniques=`cat example.log | cut -f1 | sort -n | uniq -c | wc -l`

#  Print the output
printf "Total # of unique visitors: $uniques"

