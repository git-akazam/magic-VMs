#!/bin/bash

###
####
# CREATE DATABASE gitea; 
# GRANT ALL PRIVILEGES ON gitea.* TO 'gitea'@'localhost' IDENTIFIED BY "akazama33ey842@1";
# FLUSH PRIVILEGES;
# QUIT;


#find how to insert sql command

#mysql --user="$user" --password="$password" --database="$database" --execute="CREATE DATABASE akazam;"

#mysql --user="$root" --password="" --execute='CREATE DATABASE '$akazam';'



##


#PID=$!
#echo "createdata" && CREATE DATABASE gitea; & sleep 1 &
#wait $!
#echo "Process 19 ended at time $(date +%T) with exit status $?"
#wait


#PID=$!
#echo "grant" && GRANT ALL PRIVILEGES ON gitea.* TO 'gitea'@'localhost' IDENTIFIED BY "akazama33ey842@1"; & sleep 1 &
#wait $!
#echo "Process 20 ended at time $(date +%T) with exit status $?"
#wait



#PID=$!
#echo "flush" && FLUSH PRIVILEGES; & sleep 1 &
#wait $!
#echo "Process 21 ended at time $(date +%T) with exit status $?"
#wait


#PID=$!
#echo "quit" && QUIT; & sleep 1 &
#wait $!
#echo "Process 22 ended at time $(date +%T) with exit status $?"
#wait





### cd ..
## sudo nano /etc/systemd/system/gitea.service
# copy /filestoadd/gitea.service


PID=$!
echo "sed" && sed -i '/import pycurl/i' / 
import sys /
sys.path.append("/etc/systemd/system") opt/gitea.service
& sleep 1 &
wait $!
echo "Process 33 ended at time $(date +%T) with exit status $?"
wait



PID=$!
echo -e
"[Unit]\n
Description=Gitea\n
After=syslog.target\n
After=network.target\n
Requires=mysql.service\n

[Service]\n
RestartSec=3s\n
Type=simple\n
User=git\n
Group=git\n
WorkingDirectory=/var/lib/gitea/\n

ExecStart=/usr/local/bin/gitea web --config /etc/gitea/app.ini\n
Restart=always\n
Environment=USER=git HOME=/home/git GITEA_WORK_DIR=/var/lib/gitea\n

[Install]\n
WantedBy=multi-user.target\n
" >> /etc/systemd/system/gitea.service
& sleep 1 &
wait $!
echo "Process 33 ended at time $(date +%T) with exit status $?"
wait



##

PID=$!
echo "importsys" && import sys & sleep 1 &
wait $!
echo "Process 34 ended at time $(date +%T) with exit status $?"
wait



PID=$!
echo "appendserviice" && sys.path.append("/etc/systemd/system") opt/gitea.service & sleep 1 &
wait $!
echo "Process 35 ended at time $(date +%T) with exit status $?"
wait


###


