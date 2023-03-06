#!/bin/bash

PID=$!
echo "aptupdatedist" && sudo apt-get install lightdm  & sleep 1 &
wait $!
echo "Process 2.1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "aptupdatedist" && sudo systemctl start lightdm.Service & sleep 1 &
wait $!
echo "Process 2.2 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "xubuntu" && sudo apt update && apt upgrade & sleep 1 &
wait $!
echo "Process 2.3 ended at time $(date +%T) with exit status $?"
wait



PID=$!
echo "xubuntu" && sudo apt install xubuntu-desktop -y & sleep 100 &
wait $!
echo "Process 3 ended at time $(date +%T) with exit status $?"
wait
#keyarrowdown&enter

