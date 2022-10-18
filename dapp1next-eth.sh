
#!/bin/bash

#other option
#npx create-next-app -e https://github.com/sasicodes/next-eth


echo "mkdpro" && sudo mkdir projects & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "clone" && cd projects/ && git clone https://github.com/git-akazam/next-eth.git  & sleep 1 &
wait $PID
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

echo "installlaunch" && cd projects/ && cd next-eth/ && yarn install && yarn dev & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait






#test wallet
#unique crystal include tenant boat youth hour route mention deliver sunny tuition

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
