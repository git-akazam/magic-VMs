#!/bin/bash


echo "aptupdate" && sudo apt update & sleep 1 &
wait $PID
echo "Process 14 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "wgetinstall" && sudo apt install wget & sleep 1 &
wait $!
echo "Process 15 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "xgitinstall" && sudo apt install git & sleep 1 &
wait $!
echo "Process 16 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "mariadb" && sudo apt install mariadb-server -y & sleep 1 &
wait $!
echo "Process 17 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "mysqstart" && sudo mysql -u root -p 
wait
wait
wait $!
echo "Process 18 ended at time $(date +%T) with exit status $?"
wait

#enterpassw
