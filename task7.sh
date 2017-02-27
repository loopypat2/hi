#!/bin/basha
#  Number of people using IE / by version
ie_stats=`cat example.log | cut -f6 | grep -w "MSIE" | cut -d";" -f2 | sort -k 2 | uniq -c | sort -n `

#  Number of people using Firefox / by version
ff_stats=`cat example.log | cut -f6 | grep -o -w "Firefox/*.*.**" | sort -k 9 -n | cut -d" " -f1 | cut -d'"' -f1 | tr "/" "V " | sort -n | uniq -c | sort -n`

#  Print the output
printf "Browser Statistics:\n $ie_stats \n $ff_stats \n"
