
#!/bin/bash

echo "crnjob" && cd java -jar ~/athens-cli.jar save -f $.edn & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "zp" && zip $.zip $.edn & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "uplod" && curl --upload-file $.zip https://transfer.sh/$.zip & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait


#to-do create variables 

#from another machine download transfer sh 
#curl https://transfer.sh/$.zip -o $.zip


