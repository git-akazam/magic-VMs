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


sudo ufw allow 30303
sudo ufw allow 13000/tcp

sudo ufw allow 12000/udp

sudo apt install geth



https://beaconstate.ethstaker.cc/

--checkpoint-sync-url=https://beaconstate.ethstaker.cc
./prysm.sh beacon-chain --execution-endpoint=http://127.0.0.1:8551  --datadir /eth --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --checkpoint-sync-url=https://beaconstate.ethstaker.cc --genesis-beacon-api-url=https://beaconstate.ethstaker.cc


geth --authrpc.addr localhost --authrpc.port 8551 --authrpc.vhosts localhost --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex --datadir /eth



geth --http --http.api eth,net,engine,admin 

geth --mainnet --datadir /ethereum --syncmode light --http --http.api eth,net,engine,admin,net,web3 --authrpc.addr localhost --authrpc.port 8553 --authrpc.vhosts localhost   --ws.rpcprefix /  --http.port 8551 --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex




geth --mainnet --datadir /ethereum --syncmode light --http --http.api eth,net,engine,admin,net,web3 --authrpc.addr localhost --authrpc.port 8551 --authrpc.vhosts localhost   --ws.rpcprefix /  --authrpc.jwtsecret /ethereum/consensus/prysm/jwt.hex

/ethereum/consensus/prysm

geth --mainnet --syncmode light --http --http.api eth,net,engine,admin,net,web3 --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex



--http.port 8551
--http.api




./prysm.sh beacon-chain --execution-endpoint=/root/.ethereum/geth.ipc --authrpc.jwtsecret=/root/ethereum/consensus/prysm/jwt.hex



work
geth --mainnet --datadir /ethereum --syncmode light --http --http.api eth,net,engine,admin,net,web3 --authrpc.addr localhost --authrpc.port 8551 --authrpc.vhosts localhost   --ws.rpcprefix /  --authrpc.jwtsecret /ethereum/consensus/prysm/jwt.hex





new

geth  --syncmode light  --http --http.api eth,net,engine,admin --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex


www
./prysm.sh beacon-chain --execution-endpoint=http://127.0.0.1:8551   --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --checkpoint-sync-url=http://localhost:3500 --genesis-beacon-api-url=http://localhost:3500

--checkpoint-sync-url=https://goerli.checkpoint-sync.ethpandaops.io
--genesis-beacon-api-url=https://goerli.checkpoint-sync.ethpandaops.io


geth --authrpc.addr localhost --authrpc.port 8551 --authrpc.vhosts localhost --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex

www


lighthouse beacon_node --network goerli --execution-endpoint http://127.0.0.1:8551 --execution-jwt ~/.ethereum/goerli/geth/jwtsecret --checkpoint-sync-url http://...

/root/.ethereum/geth/jwtsecret

geth --http --http.api eth,net,engine,admin --syncmode light --jwt-secret=path/to/jwt.hex


ggg
geth --mainnet --syncmode light --http --http.api eth,net,engine,admin,net,web3 --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex



./prysm.sh beacon-chain --mainnet --execution-endpoint=http://127.0.0.1:8551 --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex 
ggg


geth --http --http.api eth,net,engine,admin --authrpc.jwtsecret --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex


./prysm.sh beacon-chain --mainnet --execution-endpoint=/root/.ethereum/geth.ipc --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex 






/root/ethereum/consensus/prysm/jwt.hex


--suggested-fee-recipient=0xdd3a3eD83a164abc543DC4E0DD73DcB75f9eD5E6


geth --http --http.api eth,net,engine,admin 




geth --mainnet --http  --datadir /data --syncmode light --http.api eth,net,engine,admin --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex






geth --http --syncmode light --http.api eth,net,engine,admin --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex 







./prysm.sh beacon-chain --mainnet --execution-endpoint=/root/.ethereum/geth.ipc --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --suggested-fee-recipient=0xdd3a3eD83a164abc543DC4E0DD73DcB75f9eD5E6



./prysm.sh beacon-chain --execution-endpoint=http://localhost:8551 --jwt-secret=/ethereum/consensus/prysm/jwt.hex --suggested-fee-recipient=0xdd3a3eD83a164abc543DC4E0DD73DcB75f9eD5E6



/root/.ethereum/geth.ipc



geth --http --http.api eth,net,engine,admin --authrpc.jwtsecret /ethereum/consensus/prysm/jwt.hex






./prysm.sh beacon-chain --execution-endpoint=http://localhost:8551 --jwt-secret=/ethereum/consensus/prysm/jwt.hex --suggested-fee-recipient=0xdd3a3eD83a164abc543DC4E0DD73DcB75f9eD5E6




./prysm.sh beacon-chain --mainnet --datadir /ethereum  --jwt-secret=/root/ethereum/consensus/prysm/

 

geth attach http://127.0.0.1:8551

./prysm.sh beacon-chain --mainnet --datadir /ethereum --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex



./prysm.sh beacon-chain --execution-endpoint=http://localhost:8551 --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --suggested-fee-recipient=0xdd3a3eD83a164abc543DC4E0DD73DcB75f9eD5E6
 
 


https://ngrok.com/docs/getting-started

datadogs

termux

https://wiki.termux.com/wiki/Graphical_Environment

