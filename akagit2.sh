#!/bin/bash


PID=$!
echo "getgitea" && sudo wget -O /usr/local/bin/gitea https://dl.gitea.io/gitea/1.16.7/gitea-1.16.7-linux-amd64 & sleep 1 &
wait $!
echo "Process 23 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "chmodgit" && sudo chmod +x /usr/local/bin/gitea & sleep 1 &
wait $!
echo "Process 24 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "version" && gitea --version & sleep 1 &
wait $!
echo "Process 25 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "adduser" && sudo adduser --system --shell /bin/bash --gecos 'Git Version Control' --group --disabled-password --home /home/git git & sleep 1 &
wait $!
echo "Process 26 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "createdir" && sudo mkdir -pv /var/lib/gitea/{custom,data,log} & sleep 1 &
wait $!
echo "Process 27 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "chown" && sudo chown -Rv git:git /var/lib/gitea & sleep 1 &
wait $!
echo "Process 28 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "chmod" && sudo chmod -Rv 750 /var/lib/gitea & sleep 1 &
wait $!
echo "Process 29 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "createdir" && sudo mkdir -v /etc/gitea & sleep 1 &
wait $!
echo "Process 30 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "chownrv" && sudo chown -Rv root:git /etc/gitea & sleep 1 &
wait $!
echo "Process 31 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "chmodrv770" && sudo chmod -Rv 770 /etc/gitea & sleep 1 &
wait $!
echo "Process 32 ended at time $(date +%T) with exit status $?"
wait


