#!/bin/bash

LOG="$HOME/scripts/usage.log"

while true; do
    echo "$(date): CPU: $(top -bn1 | grep "Cpu(s)") MEM: $(free -m | grep Mem)" >> "$LOG"
    sleep 10
done
