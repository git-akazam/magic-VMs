#!/bin/bash


PID=$!
echo "update" && sudo snap install gh & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait



PID=$!
echo "update" && gh auth login & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


#settings
#developper
#personal token
#all permissions






