
#!/bin/bash



PID=$!
echo "exec" && sudo chmod +x akazamautostart.sh & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "exec" && sudo chmod +x aka1.sh & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "exec" && sudo chmod +x aka2.sh & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait




PID=$!
echo "autostart" && bash akautostart.sh & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait


