#!/bin/bash




echo "removeneed" && sudo apt -y remove needrestart & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && sudo apt update & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "aptupdatedist" && sudo apt-get update && sudo apt-get dist-upgrade -y & sleep 1 &
wait $!
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "aptupdatedist" && sudo apt-get install lightdm ß& sleep 1 &
wait $!
echo "Process 2.1 ended at time $(date +%T) with exit status $?"
wait
#maybe add -y

PID=$!
echo "aptupdatedist" && sudo systemctl start lightdm.Service & sleep 1 &
wait $!
echo "Process 2.2 ended at time $(date +%T) with exit status $?"
wait
#maybe remove .service

PID=$!
echo "xubuntu" && sudo apt update && apt upgrade & sleep 100 &
wait $!
echo "Process 2.3 ended at time $(date +%T) with exit status $?"
wait




PID=$!
echo "xubuntu" && sudo apt install xubuntu-desktop -y & sleep 100 &
wait $!
echo "Process 3 ended at time $(date +%T) with exit status $?"
wait
#keyarrowdown&enter


PID=$!
echo "xrdp" && sudo apt install xrdp -y & sleep 1 &
wait $!
echo "Process 4 ended at time $(date +%T) with exit status $?"
wait

#reboot
#sudo systemctl status xrdp






PID=$!
echo "xrdpadduser" && sudo adduser xrdp ssl-cert & sleep 1 &
wait $!
echo "Process 5 ended at time $(date +%T) with exit status $?"
wait



PID=$!
echo "xrdpsystemrestart" && sudo systemctl restart xrdp & sleep 1 &
wait $!
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "ufwallow" && sudo ufw allow 3389 & sleep 1 &
wait $!
echo "Process 7 ended at time $(date +%T) with exit status $?"
wait

#sudo ufw allow from 192.168.2.0/24 to any port 3389 (for specific IP address)

PID=$!
echo "ufwreload" && sudo ufw reload & sleep 1 &
wait $!
echo "Process 8 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "xrdpstop" && sudo service xrdp stop & sleep 1 &
wait $!
echo "Process 9 ended at time $(date +%T) with exit status $?"
wait






##to automate the edit

PID=$!
echo "xrdpstop" && sed -i '/import pycurl/i' & sleep 1 &
wait $!
echo "Process 11 ended at time $(date +%T) with exit status $?"
wait




PID=$!
echo "xrdpstop" && import sys & sleep 1 &
wait $!
echo "Process 12 ended at time $(date +%T) with exit status $?"
wait
#not correct

##
PID=$!
echo "xrdpstop" && sys.path.append("/etc/xrdp") opt/startwm.sh & sleep 1 &
wait $!
echo "Process 13 ended at time $(date +%T) with exit status $?"
wait

##to-do test this append


sudo nano /etc/xrdp/startwm.sh

comment last two lines
startxfce4


#####




PID=$!
echo "xrdpstop" && sudo systemctl status xrdp & sleep 1 &
wait $!
echo "Process 99 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "xrdpstop" && sudo service xrdp start & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait











#self#git



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
echo "mariadb" && sudo apt install mariadb-server -Y & sleep 1 &
wait $!
echo "Process 17 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "mysqlstart" && sudo mysql -u root -p & sleep 1 &
wait $!
echo "Process 18 ended at time $(date +%T) with exit status $?"
wait


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

#enterpassw


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
echo "getgitea" && sudo wget -O /usr/local/bin/gitea https://dl.gitea.io/gitea/1.16.7/gitea-1.16.7-linux-amd64 1 &
wait $!
echo "Process 23 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "chmodgit" && sudo chmod +x /usr/local/bin/gitea & sleep 1 &
wait $!
echo "Process 24 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "version" && gitea --version & sleep 30 &
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


PID=$!
echo "sed" && sed -i '/import pycurl/i' & sleep 1 &
wait $!
echo "Process 33 ended at time $(date +%T) with exit status $?"
wait


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


















#verify








errors:
E: Unable to acquire the dpkg frontend lock






from xubuntu:

sudo apt install firefox

apt install x11-xserver-utils

xhost si:localiser:root









sudo systemctl status xrdp

sudo service xrdp start


ipv4





#working
sudo apt -y remove needrestart




#options
echo $(dpkg -l "*$(uname -r)*" | grep image | awk '{print $2}') hold | dpkg --set-selections

for i in $(dpkg -l "*$(uname -r)*" | grep image | awk '{print $2}'); do echo $i hold | dpkg --set-selections; done


sudo apt purge $(apt-cache rdepends -i --installed linux-{headers,image}-$(uname -r)|awk '!/[0-9]/ && /^[ ]/{print $1}')




#keypresses
sudo apt-get install xdotool 


xdotool key KP_Enter




-Y Enter






--delay millisecond

https://manpages.ubuntu.com/manpages/trusty/man1/xdotool.1.html
https://www.cl.cam.ac.uk/~mgk25/ucs/keysymdef.h


printf  send "\r"

man yes
wait


sudo apt update && apt upgrade


sudo apt install xubuntu-desktop




#!/usr/bin/env expect
spawn "mycommand"
expect "Press Enter to continue" { send "\r" }
interact








Following script creates a temporary file that we use as a flag in the script to check 
if the script is resuming from reboot. We also temporarily update 
the .bashrc or .zshrc to trigger the script automatically after reboot.
 When the script resumes, we remove the temporary file and the extra line we added in the bashrc or zshrc.






# filename: aka2.sh


# check if the reboot flag file exists. 
# We created this file before rebooting.

if [ ! -f /var/run/resume-after-reboot ]; then
  echo "running script for the first time.."
  
  # run your scripts here

###############






  PID=$!
  echo "aka1" && bash akazamauto1 & sleep 1 &
  wait $!
  echo "Process aka1 ended at time $(date +%T) with exit status $?"
  wait
  





###########






  # Preparation for reboot
  script="bash /aka2.sh"
  
  # add this script to zsh so it gets triggered immediately after reboot
  # change it to .bashrc if using bash shell
  echo "$script" >> ~/.bashrc 
  
  # create a flag file to check if we are resuming from reboot.
  sudo touch /var/run/resume-after-reboot
  
  echo "rebooting.."
  # reboot here


  PID=$!
  echo "reb" && sudo reboot & sleep 1 &
  wait $!
  echo "Process 000 ended at time $(date +%T) with exit status $?"
  wait
  
  



  
else 
  echo "resuming script after reboot.."
  
  # Remove the line that we added in zshrc
  sed -i '/bash/d' ~/.zshrc 
  
  # remove the temporary file that we created to check for reboot
  sudo rm -f /var/run/resume-after-reboot

  # continue with rest of the script


fi

  PID=$!
  echo "aka2" && bash aka2 & sleep 1 &
  wait $!
  echo "Process aka2 ended at time $(date +%T) with exit status $?"
  wait
  