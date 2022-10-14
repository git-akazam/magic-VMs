
#!/bin/bash


echo "curll" && curl -L -o docker-compose.yml https://github.com/athensresearch/athens/releases/download/v2.1.0-beta.4/docker-compose.yml & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "downn" && docker-compose down & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "pulll" && docker-compose pull & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait


echo "preload" && docker-compose up --detach & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait





Load (Restore) Your Server​
LC

ssh into the remote server.

ssh root@"$REMOTE_IP"
RS

Stop the Athens server.

docker-compose stop athens
Find the file that you want to restore from.

ls -l /var/lib/athens/backups
You should see a list of files such as:

-rw-r--r-- 1 root root 10785081 Jan  4 12:01 2022-01-04-12-00.edn
-rw-r--r-- 1 root root 10785858 Jan  4 13:01 2022-01-04-13-00.edn
-rw-r--r-- 1 root root 10792868 Jan  4 14:01 2022-01-04-14-00.edn
Load the file to Athens server, replacing "$FILENAME with the correct filename.

java -jar ~/athens-cli.jar load -f "$FILENAME"
Follow the instructions outputted by the above command.

Restart the Athens server docker-compose start athens If you are not able to load (Restore) the file please go through the steps again and if the problem still exists then let us know in our Discord server.

Copy Your Backup to Your Local Machine​
Here we assume that you have gone through the Save (Backup) process

RS

ssh into the remote server

ssh root@"$REMOTE_IP"
Find the name of file you want to get.

ls -l /var/lib/athens/backups
You should see a list of files such as:

-rw-r--r-- 1 root root 10785081 Jan  4 12:01 2022-01-04-12-00.edn
-rw-r--r-- 1 root root 10785858 Jan  4 13:01 2022-01-04-13-00.edn
-rw-r--r-- 1 root root 10792868 Jan  4 14:01 2022-01-04-14-00.edn
Get the server log to local machine.

Replace "$REMOTE_IP" with the actual IP
Replace "$FILENAME" with the actual filename.
scp root@"$REMOTE_IP":/var/lib/athens/backups/"$FILENAME" ./