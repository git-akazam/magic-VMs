#!/bin/bash





PID=$!
echo "installoauth" &&


python3 tweetsample.py
 
  & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait





