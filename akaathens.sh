
#!/bin/bash


echo "preload" && mkdir -p ./athens-data/fluree & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "aptupdate" && chmod -R 777 ./athens-data/fluree & sleep 1 &
wait $PID
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && CONFIG_EDN="{:password \"YourServerPassword\"}" docker-compose up & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait



