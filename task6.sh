#!/bin/bash
#  10 Most visited URL, and number of times accessed
top_urls=`cat example.log | cut -f5 | cut -c2- | rev | cut -c2- | rev | sort | uniq -c | sort -n -r | head -10`

#  Print the output
printf "Top 10 most vistited URL's:\n $top_urls"
