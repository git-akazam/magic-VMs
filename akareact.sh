#!/bin/bash



PID=$!
echo "installreq" && npx create-react-app my-app & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "installreq" && cd my-app & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait



PID=$!
echo "installreq" && cd my-app & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait



PID=$!
echo "installreq" && cd my-app & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait


echo "preload" && code . --no-sandbox --no-user-dir & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait



PID=$!
echo "installreq" && npm start & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait



