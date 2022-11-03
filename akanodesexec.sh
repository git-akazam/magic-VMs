
#!/bin/bash


PID=$!
echo "ujson" && cd ethereum && cd execution && screen -dm -S "execclient" geth --http --http.api eth,net,engine,admin --authrpc.jwtsecret /root/ethereum/consensus/prysm/jwt.hex & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


