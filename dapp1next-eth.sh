
#!/bin/bash

#other option
#npx create-next-app -e https://github.com/sasicodes/next-eth


echo "removeneed" && sudo mkdir projects & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && cd projects/ & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && git clone https://github.com/git-akazam/next-eth.git & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && cd next-eth/ & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && yarn install & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "removeneed" && yarn dev & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait







#possible fix
#yarn add husky --dev

#Other tasks

#npx hardhat accounts
#npx hardhat compile
#npx hardhat clean
#npx hardhat test
#npx hardhat node
#node scripts/sample-script.js
#npx hardhat help
