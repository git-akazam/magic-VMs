
#!/bin/bash


#pass the variable with quoted expansion


#export FILEZIP='Filename.zip'

#export FILEEDN='Filename.edn'

#export  TRANSERLINK= 'https://transfer.sh/Filename.zip'

echo "crnjob" && java -jar ~/athens-cli.jar save -f echo "$FILEEDN" & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "zp" && zip echo "$FILEZIP" echo "$FILEEDN" & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "uplod" && curl --upload-file echo "$FILEZIP" echo "$TRANSFERLINK" & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait


#to-do create variables 

#from another machine download transfer sh 
#curl https://transfer.sh/$.zip -o $.zip


