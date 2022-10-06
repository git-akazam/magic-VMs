#!/bin/bash

echo "removeneed" && bash akanpmyarn.sh & sleep 1 &
wait $PID
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && cd next-eth & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && bash dapp1next-eth.sh & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait


