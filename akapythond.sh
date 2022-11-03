#!/bin/bash












python3.9 --version

echo "removeneed" && sudo apt update & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev -y & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && wget https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tgz & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && tar -xf Python-3.9.1.tgz  & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "update" && cd Python-3.9.1 && ./configure --enable-optimizations && make -j 8 && sudo make altinstall  & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "update" && sudo apt install python3-pip -y & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && sudo pip3 install web3 & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


echo "preload" && sudo pip3 install aio-eth==0.0.1 & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait


sudo apt-get install python3-setuptools


sudo pip3 install setuptools

sudo pip install bip-utils

sudo apt install sqlite3

pip install -U pip setuptools 


python3 -m pip install --upgrade pip setuptools wheel

