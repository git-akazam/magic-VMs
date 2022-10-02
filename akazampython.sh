#!/bin/bash


echo "removeneed" && sudo apt update & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && sudo apt install software-properties-common & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && sudo add-apt-repository ppa:deadsnakes/ppa & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && sudo apt install python3.8 & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && apt install python3-pip & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && sudo pip install web3 & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait







