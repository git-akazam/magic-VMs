
#!/bin/bash

echo "preload" && docker-compose up --detach & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait




