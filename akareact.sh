#!/bin/bash




PID=$!
echo "installreq" && npm install react & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait




PID=$!
echo "installreq" && source ./venv/bin/activate & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait





PID=$!
echo "installreq" && pip install requests & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "installoauth" && pip install requests-oauthlib & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait



PID=$!
echo "xrdsudotweep" && sudo -H pip install tweepy & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait



