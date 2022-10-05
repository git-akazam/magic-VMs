#!/bin/bash




PID=$!
echo "installreq" && sudo apt-get install xdotool -y & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait



