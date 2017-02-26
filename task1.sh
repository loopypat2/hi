#!/bin/bash
#  Start date (without time)
start_date=`head -1 example.log | cut -f3`

#  End date and time
end_date=`tail -1 example.log | cut -f3`

#  Print the output
printf "$start_date to $end_date"
