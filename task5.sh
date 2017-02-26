#!@/bin/bash
#  5 Most popular resource accessed, and number of times accessed
top_files=`cat example.log | cut -f4 | cut -c14-| cut -d" " -f1,3 | sort | uniq -c | sort -n -r | head -5`

#  Print the output
printf "Top 5 most used resources:\n $top_files"
