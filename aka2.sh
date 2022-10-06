
#!/bin/bash


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



PID=$!
echo "xrdpstop" && sys.path.append("/etc/xrdp") magic-VMS/filestoadd/startwm.sh & sleep 1 &
wait $!
echo "Process 13 ended at time $(date +%T) with exit status $?"
wait




sudo nano /etc/xrdp/startwm.sh

comment last two lines
startxfce4






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




