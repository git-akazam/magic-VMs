#!/bin/bash



PID=$!
echo "startgit" && sudo systemctl start gitea & sleep 1 &
wait $!
echo "Process 36 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "hostname" && hostname -I & sleep 1 &
wait $!
echo "Process 37 ended at time $(date +%T) with exit status $?"
wait




#addport to ip add port::3000