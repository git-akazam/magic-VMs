
#!/bin/bash

echo "preload" && cd Downloads/ & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && sudo wget https://github.com/athensresearch/athens/releases/download/v2.1.0-beta.4/Athens-2.1.0-beta.4.AppImage & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && ./Athens-2.1.0-beta.4.AppImage --no-sandbox & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait










