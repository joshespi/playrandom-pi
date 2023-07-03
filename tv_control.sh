#!/bin/bash

current_hour=$(date +'%H')

# Check if the TV should be off based on the current hour
if [[ $current_hour -ge 22 || $current_hour -lt 6 ]]; then
  echo 'standby 0.0.0.0' | cec-client -s -d 1
else
  echo 'as 0.0.0.0' | cec-client -s -d 1
fi

