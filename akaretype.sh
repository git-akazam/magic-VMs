#!/bin/bash


echo "removeneed" &&  npm install retypeapp --global & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && retype watch & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait










