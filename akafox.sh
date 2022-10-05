
#!/bin/bash


echo "xhost" && xhost si:localuser:root & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "runfire" && sudo firefox https://google.com & sleep 1 &
wait $PID
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


