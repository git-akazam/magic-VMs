
#!/bin/bash


echo "preload" && sudo apt install x11-xserver-utils & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "aptupdate" && sudo apt install firefox & sleep 1 &
wait $PID
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait
