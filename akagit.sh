

#!/bin/bash


PID=$!
echo "aptupdate" && sudo apt update & sleep 1 &
wait $!
echo "Process 14 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "wgetinstall" && sudo apt install wget & sleep 1 &
wait $!
echo "Process 15 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "xgitinstall" && sudo apt install git & sleep 1 &
wait $!
echo "Process 16 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "mariadb" && sudo apt install mariadb-server -y & sleep 1 &
wait $!
echo "Process 17 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "mysqlstart" && sudo mysql -u root -p & sleep 1 &
wait
wait
wait $!
echo "Process 18 ended at time $(date +%T) with exit status $?"
wait

#enterpassw

####


PID=$!
echo "createdata" && CREATE DATABASE gitea; & sleep 1 &
wait $!
echo "Process 19 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "grant" && GRANT ALL PRIVILEGES ON gitea.* TO 'gitea'@'localhost' IDENTIFIED BY "akazama33ey842@1"; & sleep 1 &
wait $!
echo "Process 20 ended at time $(date +%T) with exit status $?"
wait



PID=$!
echo "flush" && FLUSH PRIVILEGES; & sleep 1 &
wait $!
echo "Process 21 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "quit" && QUIT; & sleep 1 &
wait $!
echo "Process 22 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "getgitea" && sudo wget -O /usr/local/bin/gitea https://dl.gitea.io/gitea/1.16.7/gitea-1.16.7-linux-amd64 & sleep 1 &
wait $!
echo "Process 23 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "chmodgit" && sudo chmod +x /usr/local/bin/gitea & sleep 1 &
wait $!
echo "Process 24 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "version" && gitea --version & sleep 1 &
wait $!
echo "Process 25 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "adduser" && sudo adduser --system --shell /bin/bash --gecos 'Git Version Control' --group --disabled-password --home /home/git git & sleep 1 &
wait $!
echo "Process 26 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "createdir" && sudo mkdir -pv /var/lib/gitea/{custom,data,log} & sleep 1 &
wait $!
echo "Process 27 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "chown" && sudo chown -Rv git:git /var/lib/gitea & sleep 1 &
wait $!
echo "Process 28 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "chmod" && sudo chmod -Rv 750 /var/lib/gitea & sleep 1 &
wait $!
echo "Process 29 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "createdir" && sudo mkdir -v /etc/gitea & sleep 1 &
wait $!
echo "Process 30 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "chownrv" && sudo chown -Rv root:git /etc/gitea & sleep 1 &
wait $!
echo "Process 31 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "chmodrv770" && sudo chmod -Rv 770 /etc/gitea & sleep 1 &
wait $!
echo "Process 32 ended at time $(date +%T) with exit status $?"
wait




###

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




PID=$!
echo "startgit" && sudo systemctl start gitea & sleep 1 &
wait $!
echo "Process 36 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "hostname" && hostname -I & sleep 1 &
wait $!
echo "Process 37 ended at time $(date +%T) with exit status $?"
wait




#addport to ip add port::3000