#!/bin/bash






echo "removeneed" && apt install npm & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && npm install -g npm & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" &&npm install -g node& sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait
