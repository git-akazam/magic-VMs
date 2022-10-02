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

PID=$!
echo "aptupdatedist" && sudo apt-get update && sudo apt-get dist-upgrade -y & sleep 1 &
wait $!
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait


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
echo "xubuntu" && sudo apt update && apt upgrade & sleep 100 &
wait $!
echo "Process 2.3 ended at time $(date +%T) with exit status $?"
wait



PID=$!
echo "xubuntu" && sudo apt install xubuntu-desktop -y & sleep 100 &
wait $!
echo "Process 3 ended at time $(date +%T) with exit status $?"
wait
#keyarrowdown&enter

