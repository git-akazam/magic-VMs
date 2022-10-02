
#!/bin/bash


echo "removeneed" && sudo mkdir akazam & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "update" && git init & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "update" && touch READAKAZAM.md & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && git add -A & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait
PID=$!
echo "update" && git config --global user.email "youremail@akazam.eth" & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && git config --global user.name "Kk232323" & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && git commit -m "first commit" & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && git remote add master http://localhost:3000/gitea/Akazam.git & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && git push -u master & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && cd akazam & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && cd akazam & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && cd akazam & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && cd akazam & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait












#git remote add origin http://localhost:3000/gitea/akazam/git
#git push --set-upstream origin master







git clone 



* 
Ls -a
Rm -r .git

git rm --cached resources


git remote add master http://localhost:3000/gitea/Akazam.git








