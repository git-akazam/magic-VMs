#!/bin/bash


echo "removeneed" && sudo apt -y remove needrestart & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && sudo apt update & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

sudo apt-get update && sudo apt-get dist-upgrade -y 


