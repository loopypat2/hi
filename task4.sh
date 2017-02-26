#!/bin/bash
#  Top 10 visitors (users), and the number of times they visited
top_users=`cat example.log | cut -f2 | sort | uniq -c | sort -n -r | head -10`

#  Print the output
printf "Top 10 Users:\n $top_users"

