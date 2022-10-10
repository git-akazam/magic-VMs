
#!/bin/bash


echo "curll" && curl -L -o docker-compose.yml https://github.com/athensresearch/athens/releases/download/v2.1.0-beta.4/docker-compose.yml & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "downn" && docker-compose down & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "pulll" && docker-compose pull & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait


echo "preload" && docker-compose up --detach & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait





