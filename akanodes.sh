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



#how to run light

Nimbus eth1

or only full:

geth + prysm

or Nethermind + prysm


sudo ufw allow 30303
sudo ufw allow 13000/tcp

sudo ufw allow 12000/udp

sudo apt install geth

geth attach /geth.ipc
eth.syncing


geth --http --http.api eth,net,engine,admin --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex

 --syncmode light 

./prysm.sh beacon-chain --execution-endpoint=http://localhost:8551 --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --suggested-fee-recipient=0xdd3a3eD83a164abc543DC4E0DD73DcB75f9eD5E6 --checkpoint-sync-url=https://beaconstate.ethstaker.cc --genesis-beacon-api-url=https://beaconstate.ethstaker.cc






https://beaconstate.ethstaker.cc/

--checkpoint-sync-url=https://beaconstate.ethstaker.cc
./prysm.sh beacon-chain --execution-endpoint=http://127.0.0.1:8551  --datadir /eth --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --checkpoint-sync-url=https://beaconstate.ethstaker.cc --genesis-beacon-api-url=https://beaconstate.ethstaker.cc


geth --authrpc.addr localhost --authrpc.port 8551 --authrpc.vhosts localhost --authrpc.addr=ethereum-node --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex --datadir /eth


./prysm.sh beacon-chain --execution-endpoint=http://ethereum-node:8551 --datadir /eth --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --checkpoint-sync-url=https://beaconstate.ethstaker.cc --genesis-beacon-api-url=https://beaconstate.ethstaker.cc


geth --authrpc.addr=ethereum-node --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex --datadir /eth

geth --authrpc.addr=ethereum-node --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex --datadir /eth





geth --authrpc.addr=172.18.0.2 --authrpc.port 8551 --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex --datadir /eth


i use docker to run prysm and geth together
i pull last geth & prysm in dockerhub

prysm docker document : https://docs.prylabs.network/docs/install/install-with-docker


prysm docker run command => docker run -d -it -p 4000:4000 -p 13000:13000 -p 12000:12000/udp --name beacon-node gcr.io/prysmaticlabs/prysm/beacon-chain:stable --datadir=/data --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --rpc-host=0.0.0.0 --grpc-gateway-host=0.0.0.0 --monitoring-host=0.0.0.0 --execution-endpoint=http://127.0.0.1:8551 --accept-terms-of-use  --suggested-fee-recipient=0xdd3a3eD83a164abc543DC4E0DD73DcB75f9eD5E6

geth docker run command =>

 docker run -d -p 8545:8545 -p 8551:8551 -p 8550:8550 -p 30303:30303 -p 8546:8546 -it ethereum/client-go --syncmode light --http --http.api eth,net,engine,admin --http.rpcprefix=/ --http.corsdomain="" --http.addr 0.0.0.0 --ws --ipcdisable --ws.addr 0.0.0.0 --ws.origins="" --datadir /diskb/ethereum/chaindata --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex --authrpc.addr=127.0.0.1 --authrpc.port 8551 --authrpc.vhosts "*"


What @karalabe said also applies to geth. By default authrpc.addr listening address is set to 127.0.0.1/localhost. So you have to set --authrpc.addr=127.0.0.1 or --authrpc.addr=ethereum-node.



docker run -it -v /.eth2:/data -p 4000:4000 -p 13000:13000 -p 12000:12000/udp --name beacon-node \
  gcr.io/prysmaticlabs/prysm/beacon-chain:stable \
  --datadir=/data \
  --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex\
  --rpc-host=0.0.0.0 \
  --grpc-gateway-host=0.0.0.0 \
  --monitoring-host=0.0.0.0 \
  --execution-endpoint=<YOUR_ETH_EXECUTION_NODE_ENDPOINT>



geth --http --http.api eth,net,engine,admin --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex



--p2p-host-ip=$(curl -s ident.me)





work:
./prysm.sh beacon-chain --execution-endpoint=http://127.0.0.1:8551  --datadir /eth --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --checkpoint-sync-url=https://beaconstate.ethstaker.cc --genesis-beacon-api-url=https://beaconstate.ethstaker.cc

geth --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex --datadir /eth --syncmode light 


./prysm.sh beacon-chain --execution-endpoint=http://127.0.0.1:8551  --datadir /eth --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --checkpoint-sync-url=https://beaconstate.ethstaker.cc --genesis-beacon-api-url=https://beaconstate.ethstaker.cc
111



geth --http --http.api eth,net,engine,admin --authrpc.jwtsecret /path/to/jwt.hex --syncmode light 


geth --http --http.api eth,net,engine,admin 

geth --mainnet --datadir /ethereum --syncmode light --http --http.api eth,net,engine,admin,net,web3 --authrpc.addr localhost --authrpc.port 8553 --authrpc.vhosts localhost   --ws.rpcprefix /  --http.port 8551 --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex





geth --http --http.api eth,net,engine,admin --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex  --syncmode light

./prysm.sh beacon-chain --execution-endpoint=/root/.ethereum/geth.ipc



./prysm.sh beacon-chain --execution-endpoint=http://localhost:8551 --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex

geth --http --http.api eth,net,engine,admin --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex






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

