
#!/bin/bash


echo "preload" && sudo snap install --classic code & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait
