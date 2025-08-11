#!/bin/bash

# Get the current time (rounded to nearest second)
frozen_time=$(date '+%Y-%m-%d %H:%M:%S')

echo "Freezing time at: $frozen_time"

# Loop for 120 seconds
for i in {1..120}; do
    sudo date -s "$frozen_time" >/dev/null
    sleep 1
done

