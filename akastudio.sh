
#!/bin/bash


echo "preload" && code . --no-sandbox --user-data-dir & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait
