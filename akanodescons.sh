
#!/bin/bash



PID=$!
echo "consensusclient" && cd ethereum && cd consensus && cd prysm && screen -dm -S "consclient" ./prysm.sh beacon-chain --execution-endpoint=http://localhost:8551 --jwt-secret=/root/ethereum/consensus/prysm/jwt.hex --suggested-fee-recipient=0x4127dC53c9B300ecc75E34B17C649792039fc22e --checkpoint-sync-url=https://beaconstate.ethstaker.cc --genesis-beacon-api-url=https://beaconstate.ethstaker.cc --accept-terms-of-use & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


