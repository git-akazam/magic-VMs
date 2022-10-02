#!/bin/bash


echo "removeneed" && sudo apt-get install screen & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && sudo apt install unzip & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait






