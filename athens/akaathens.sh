
#!/bin/bash

echo "preload" && mkdir athens & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait


echo "preload" && cp akaathens2.sh /athens & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && cd athens/ & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && curl -L -o docker-compose.yml https://github.com/athensresearch/athens/releases/download/v2.1.0-beta.4/docker-compose.yml & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && mkdir -p ./athens-data/fluree & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "aptupdate" && chmod -R 777 ./athens-data/fluree & sleep 1 &
wait $PID
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && sudo nano .env & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait



#CONFIG_EDN="{:password \"YourServerPassword\"}"




