
#!/bin/bash

echo "preload" && apt install cmdtest & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && apt install npm & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && sudo apt install default-jdk & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && curl -O https://download.clojure.org/install/linux-install-1.11.1.1165.sh & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "aptupdate" && sudo chmod +x linux-install-1.11.1.1165.sh & sleep 1 &
wait $PID
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && sudo ./linux-install-1.11.1.1165.sh & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait


echo "preload" && git clone https://github.com/athensresearch/athens.git & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && npm run cli:compile & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && npm run cli:uberjar  & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait

## scp target/athens-cli.jar root@IPADDRESSS:~/athens-cli.jar

## scp script/save-cronjob.sh root@IPADDRESSS:~/save-cronjob.sh



## crontab -e

# 1

##: 0 */1 * * * ~/save-cronjob.sh

## ctrl x , y

##  cd ..
## ls -l /var/lib/athens/backups/
























