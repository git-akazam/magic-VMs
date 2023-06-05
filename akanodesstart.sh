#!/bin/bash


echo "sudoeth" && cp akanodes.sh /root/akanodes.sh & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "sudoeth" && cp akanodesexec.sh /root/akanodesexec.sh & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "sudoeth" && cp akanodescons.sh /root/akanodescons.sh & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait


