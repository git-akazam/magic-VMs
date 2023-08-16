#create vm

#login ssh

#install chrome remote desktop https://cloud.google.com/architecture/chrome-desktop-remote-on-compute-engine
#https://en.linuxportal.info/tutorials/troubleshooting/how-can-we-manually-unmask-services-that-are-masked-service-is-masked-that-we-cannot-unmask-with-the-unmask-option-of-the-systemctl-command

curl -L -o chrome-remote-desktop_115.0.5790.10_amd64.deb \
    https://deb.rug.nl/ppa/mirror/dl.google.com/linux/chrome-remote-desktop/deb/pool/main/c/chrome-remote-desktop/chrome-remote-desktop_115.0.5790.10_amd64.deb
sudo DEBIAN_FRONTEND=noninteractive \
    apt-get install --assume-yes ./chrome-remote-desktop_115.0.5790.10_amd64.deb

    
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

#add to sudoers  usermod -aG sudo username
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



mkdir ~/.config/chrome-remote-desktop
You15:27
sudo systemctl status chrome-remote-desktop@$USER
You15:30
sudo service chrome-remote-desktop restart
Brodie Gould15:31
https://askubuntu.com/questions/605381/chrome-remote-desktop-failed-to-start-remote-access-service#:~:text=I%20had%20similar%20problem
You15:33
sudo usermod -a -G chrome-remote-desktop $USER
You15:36
sudo groupadd chrome-remote-desktop usermod -a -G chrome-remote-desktop
