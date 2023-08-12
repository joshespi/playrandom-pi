#!/bin/bash

current_hour=$(date +'%H')
day_of_week=$(date +'%u') # 1 (Monday) through 7 (Sunday)

# Check if the TV should be off based on the current hour and day of the week
if [[ ($day_of_week -eq 6 || $day_of_week -eq 7) && ($current_hour -ge 7 && $current_hour -lt 21) ]] ||
   [[ ($day_of_week -ge 1 && $day_of_week -le 5) && ($current_hour -ge 16 && $current_hour -lt 21) ]]; then
  echo 'standby 0.0.0.0' | cec-client -s -d 1
else
  echo 'as 0.0.0.0' | cec-client -s -d 1
fi
