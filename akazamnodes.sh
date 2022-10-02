#!/bin/bash


echo "sudoeth" && sudo add-apt-repository -y ppa:ethereum/ethereum & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && sudo apt-get update & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "intalleth" && sudo apt-get install ethereum -y & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "syncnodes" && geth --syncmode light --http --http.api debug,eth,txpool,net,web3 & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "attach" && geth attach http://127.0.0.1:8545 & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "attach2" && geth attach -ipcpath ~/.ethereum/geth.ipc & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "attachterm" && geth attach & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "testblock" && eth.getBlockByNumber(11111111) & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "aio" && pip install aio-eth==0.0.1 & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "ujson" && pip install ujson & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait










 





 
 


