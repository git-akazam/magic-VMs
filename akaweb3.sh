#!/bin/bash




PID=$!
echo "installreq" && pip install web3 & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait
