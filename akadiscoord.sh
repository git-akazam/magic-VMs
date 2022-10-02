#!/bin/bash




PID=$!
echo "installreq" && pip install discord & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait




PID=$!
echo "installreq" && pip install asyncio & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait



