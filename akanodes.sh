#!/bin/bash

echo "screen" && bash akascreen.sh & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait


echo "aptupdate" && sudo ufw allow 30303 & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "aptupdate" && sudo ufw allow 13000/tcp & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "aptupdate" && sudo ufw allow 12000/udp & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait


echo "aptupdate" && sudo apt update & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "aptupgrade" && sudo apt upgrade & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "installsoft" && sudo apt install software-properties-common & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "installcurl" && sudo apt install curl & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "installgnupg" && sudo apt-get install gnupg & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "install cons" && mkdir ethereum && cd ethereum && mkdir consensus && mkdir execution && cd consensus && mkdir prysm && cd prysm && curl https://raw.githubusercontent.com/prysmaticlabs/prysm/master/prysm.sh --output prysm.sh && chmod +x prysm.sh && ./prysm.sh beacon-chain generate-auth-secret & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "installgeth" && echo "deb http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main 
deb-src http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main" > /etc/apt/sources.list.d/ethereum-bioinc.list & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "keygeth" && apt-key adv --keyserver keyserver.ubuntu.com  --recv-keys 2A518C819BE37D2C2031944D1C52189C923F6CA9 & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "aptupdate" && apt-get update & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "installeth" && apt-get install ethereum & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "execstart" && bash akanodesexec.sh & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "consstart" && bash akanodescons.sh & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait




# Storage: 2TB and then run many nodes from same storage:
# Node as a service
# requirement is : 20 000 IOps
# BlockStorage: 

# Hard approach:
# NFSv4: challenge is the IOps for read/write
#  they could add this virtual folder on their machine


# or We can offer a script to run self hosted nodes:
# where users choose cloud provider or local machine 
# https://www.netcup.eu/
# https://www.alibabacloud.com/free
# https://cloud.google.com/
# kamatera.com/
# or run them locally, no need of cloud, 2tb nvme is pretty cheap locally compared to cloud prices



# Lodestar: docker + geth
# light client 

# Nimbus: with geth 
# light client and execution layer

# Prysm: with geth 


# https://eth-clients.github.io/checkpoint-sync-endpoints/



# https://mirror.xyz/ladislaus.eth/O5bW3rDnKITHlCXE9K_0IwiEwDrc6qw-y3MpX0EUcew


# docker run chainsafe/lodestar lightclient --beaconApiUrl https://lodestar-mainnet.chainsafe.io --checkpointRoot 0xe9dc964f26dacdcffce3c4eb2df01ecb175c17e9909a707c421a10b521d100f2 --network mainnet 

# docker cp testy.js ec402a707f0f:usr/app/testy.js


# docker exec -it silly_joliot node testy.js

# docker exec -it silly_joliot sh

# docker exec silly_joliot

# --JsonRpc.AdditionalRpcUrls "http://localhost:8545"

#     command: beacon --dataDir /data --rest --rest.address 0.0.0.0 --metrics --logFile /logs/beacon.log --logFileLevel debug --logFileDailyRotate 5 --jwt-secret /jwtsecret



#  --execution.urls http://127.0.0.1:8551

# #how to run light

# Nimbus eth1

# or only full:

# geth + prysm

# or Nethermind + prysm



# install curl:
# $ sudo apt update
# $ sudo apt upgrade

# sudo apt install software-properties-common


# Type the following apt command or apt-get command:
# $ sudo apt install curl

# install gpg:
# sudo apt-get install gnupg 




# mkdir ethereum && cd ethereum && mkdir consensus && mkdir execution && cd consensus && mkdir prysm && cd prysm && curl https://raw.githubusercontent.com/prysmaticlabs/prysm/master/prysm.sh --output prysm.sh && chmod +x prysm.sh && ./prysm.sh beacon-chain generate-auth-secret





# echo "deb http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main 
# deb-src http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main" > /etc/apt/sources.list.d/ethereum-bioinc.list

# apt-key adv --keyserver keyserver.ubuntu.com  --recv-keys 2A518C819BE37D2C2031944D1C52189C923F6CA9
# apt-get update
# apt-get install ethereum


# #HTTP
# geth --http --http.api eth,net,engine,admin --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex

# ./prysm.sh beacon-chain --execution-endpoint=http://localhost:8551 --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --suggested-fee-recipient=0x4127dC53c9B300ecc75E34B17C649792039fc22e --checkpoint-sync-url=https://beaconstate.ethstaker.cc --genesis-beacon-api-url=https://beaconstate.ethstaker.cc --accept-terms-of-use 


# #add flag
# --accept-terms-of-use 

# #IPC
# geth --http --http.api eth,net,engine,admin 

# #checkpoints
# https://eth-clients.github.io/checkpoint-sync-endpoints/


# #Upgrade:
# geth import export
# https://www.chaindata.club/speed-up
# https://www.chaindata.club/full-sync

# defaults:
# --cache=4096 --maxpeers 50



# #monitor
# https://blog.netdata.cloud/how-to-monitor-the-geth-node-in-under-5-minutes/



# #ressources

# prysm:
# https://docs.prylabs.network/docs/prysm-usage/parameters

# geth:
# https://geth.ethereum.org/docs/interface/command-line-options

# blog 2019:

# https://blog.ethereum.org/2019/07/10/geth-v1-9-0



# #how to kill node
# ctrl+c in the screen prettyKilling a Daemon Process

# If the process is running as a daemon, then you can kill it with kill -INT <pid> 
# where <pid is the process id for the running geth process.

# One way to find the process id is with
#  ps aux | grep geth.

# or
# pkill -INT geth

# or
# sudo systemctl stop geth


# #benchmarks
# Full sync
# We've run a full sync benchmark on two i3.2xlarge AWS EC2 instances (8 core, 61 GiB RAM, 1.9 TiB NVMe SSD) with --cache=4096 --maxpeers=50 --syncmode=full.
# VERSION	SYNC TIME	DISK SIZE	DISK READS	DISK WRITES
# Geth v1.8.27	6d 15h 30m	341GiB	28.9TiB	21.8TiB
# Geth v1.9.0	6d 8h 7m*	303GiB	40.2TiB*	32.6TiB*


# sudo dpkg-reconfigure locales




# sudo ufw allow 30303
# sudo ufw allow 13000/tcp

# sudo ufw allow 12000/udp


# sudo apt install geth

# geth attach /geth.ipc
# eth.syncing




# echo "sudoeth" && sudo add-apt-repository -y ppa:ethereum/ethereum & sleep 1 &
# wait $PID
# echo "Process 0 ended at time $(date +%T) with exit status $?"
# wait

# PID=$!
# echo "update" && sudo apt-get update & sleep 1 &
# wait $!
# echo "Process 1 ended at time $(date +%T) with exit status $?"
# wait

# PID=$!
# echo "intalleth" && sudo apt-get install ethereum -y & sleep 1 &
# wait $!
# echo "Process 1 ended at time $(date +%T) with exit status $?"
# wait








# i use docker to run prysm and geth together
# i pull last geth & prysm in dockerhub

# prysm docker document : https://docs.prylabs.network/docs/install/install-with-docker


# prysm docker run command => docker run -d -it -p 4000:4000 -p 13000:13000 -p 12000:12000/udp --name beacon-node gcr.io/prysmaticlabs/prysm/beacon-chain:stable --datadir=/data --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --rpc-host=0.0.0.0 --grpc-gateway-host=0.0.0.0 --monitoring-host=0.0.0.0 --execution-endpoint=http://127.0.0.1:8551 --accept-terms-of-use  --suggested-fee-recipient=0xdd3a3eD83a164abc543DC4E0DD73DcB75f9eD5E6

# geth docker run command =>

#  docker run -d -p 8545:8545 -p 8551:8551 -p 8550:8550 -p 30303:30303 -p 8546:8546 -it ethereum/client-go --syncmode light --http --http.api eth,net,engine,admin --http.rpcprefix=/ --http.corsdomain="" --http.addr 0.0.0.0 --ws --ipcdisable --ws.addr 0.0.0.0 --ws.origins="" --datadir /diskb/ethereum/chaindata --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex --authrpc.addr=127.0.0.1 --authrpc.port 8551 --authrpc.vhosts "*"


# What @karalabe said also applies to geth. By default authrpc.addr listening address is set to 127.0.0.1/localhost. So you have to set --authrpc.addr=127.0.0.1 or --authrpc.addr=ethereum-node.



# docker run -it -v /.eth2:/data -p 4000:4000 -p 13000:13000 -p 12000:12000/udp --name beacon-node \
#   gcr.io/prysmaticlabs/prysm/beacon-chain:stable \
#   --datadir=/data \
#   --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex\
#   --rpc-host=0.0.0.0 \
#   --grpc-gateway-host=0.0.0.0 \
#   --monitoring-host=0.0.0.0 \
#   --execution-endpoint=<YOUR_ETH_EXECUTION_NODE_ENDPOINT>



# geth --http --http.api eth,net,engine,admin --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex



# --p2p-host-ip=$(curl -s ident.me)


















#  #remote options


# https://ngrok.com/docs/getting-started

# datadogs

# termux

# https://wiki.termux.com/wiki/Graphical_Environment

