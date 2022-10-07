
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

PID=$!
echo "exec" && cp aka11.sh /root/aka11.sh & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "exec" && cp aka22.sh /root/aka22.sh& sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "exec" && cp aka33.sh /root/aka33.sh & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "exec" && cd /root & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait


