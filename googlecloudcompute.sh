#create vm

#login ssh

#install chrome remote desktop https://cloud.google.com/architecture/chrome-desktop-remote-on-compute-engine
#https://en.linuxportal.info/tutorials/troubleshooting/how-can-we-manually-unmask-services-that-are-masked-service-is-masked-that-we-cannot-unmask-with-the-unmask-option-of-the-systemctl-command

sudo apt update
curl -L -o chrome-remote-desktop_current_amd64.deb \
    https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo DEBIAN_FRONTEND=noninteractive \
    apt-get install --assume-yes ./chrome-remote-desktop_current_amd64.deb


sudo DEBIAN_FRONTEND=noninteractive \
    apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver
    
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'

sudo systemctl disable lightdm.service

curl -L -o google-chrome-stable_current_amd64.deb \
https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes ./google-chrome-stable_current_amd64.deb

#sudo passwd username

#add to sudoers 
#sudo su
#vi /etc/sudoers

#i
#username ALL...

#:wq!


sudo apt install git

sudo apt update

sudo apt install nodejs

sudo apt install npm

sudo apt install ufw
