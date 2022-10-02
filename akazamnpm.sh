#!/bin/bash






echo "removeneed" && apt install npm -y & sleep 1 &
wait $PID
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && npm install -g npm & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" &&npm install -g node& sleep 1 &
wait $PID
echo "Process 3 ended at time $(date +%T) with exit status $?"
wait
