#!/bin/bash





echo "removeneed" && apt install npm -y & sleep 1 &
wait $PID
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && npm install -g npm & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" &&npm install -g node & sleep 1 &
wait $PID
echo "Process 3 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && apt install cmdtest -y & sleep 1 &
wait $PID
echo "Process 4 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && npm install -g yarn & sleep 1 &
wait $PID
echo "Process 5 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && yarn & sleep 1 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait










