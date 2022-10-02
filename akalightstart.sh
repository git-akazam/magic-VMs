
#!/bin/bash



PID=$!
echo "exec" && sudo chmod +x aka11.sh & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "exec" && sudo chmod +x aka22.sh & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "exec" && sudo chmod +x aka33.sh & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait



