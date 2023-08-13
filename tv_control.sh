#!/bin/bash

current_hour=$(date +'%H')
day_of_week=$(date +'%u') # 1 (Monday) through 7 (Sunday)

if [[ ($day_of_week -eq 6 || $day_of_week -eq 7) && ($current_hour -ge 8 && $current_hour -lt 21) ]]; then
  echo 'as 0.0.0.0' | cec-client -s -d 1
elif [[ ($day_of_week -ge 1 && $day_of_week -le 5) && ($current_hour -ge 16 && $current_hour -lt 21) ]]; then
  echo 'as 0.0.0.0' | cec-client -s -d 1
else
  echo 'standby 0.0.0.0' | cec-client -s -d 1
fi
