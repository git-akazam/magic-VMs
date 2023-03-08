
# Akazam | Enabling Web3 simpler, faster

![alt text](https://github.com/git-akazam/magic-VMs/blob/main/Background.png?raw=true)

Akazam is a solution to develop dApps and launch coding environments on Virtual Machines on servers along databases automagically with a self-hosted git called gitakazam to pin stuff on IPFS, all that in one single click.
Akazam is the easiest and quickest way to develop, launch and manage dApps, databases and servers. 
Akazam is perfect for developers who want to quickly get started with developing and launching dApps without having to worry about setting up and configuring a development environment. With Akazam you can be up and running in no time.


# Setup

### Initialization
```sh
git clone https://github.com/git-akazam/magic-VMs.git
```
```sh
cd magic-Vms
```
```sh
bash akalightstart.sh
```

Go on the root for next commands:
sudo -s
cd
### update apt

```sh
bash aka00.sh 
```
*Press enter*
### Setup theme

```sh
bash aka11.sh 
```
*keyarrowdown&enter light dm*


### Start XRDP
```sh
bash aka22.sh
```

### Start VM Modifications(Manually)
```sh
sudo nano /etc/xrdp/startwm.sh
```

1. comment last two lines
2. add: startxfce4 
on last the last line

### Start VM Modifications(Automatically)

```sh
rm ∼/etc/xrdp/startwm.sh 
cp ∼/filestoadd/starwm.sh ∼/etc/xrdp/startwm.sh
```

### Finally, Start XRDP via Akazam
```sh
bash aka33.sh
```

## Login
Once Akazam is setup,
Login with root password and ip address trough Microsoft Remote Desktop:


## All set now

## Future improvements:
akastart makes autostart run which makes aka1 and ak2 run 




bash akastart.sh
akazamauto is into:
aka1
aka2 
these are for xubuntu

akagit is selfhosted git

akazamauto and akazam are full files which includes trial and errors file **do not run them** 


# More Setup
1. Setup SSH
```sh
ssh-keygen
cat /.ssh/id_rsa.pub
```

2.  Add to github
add to github

3. Install firefox
```sh
bash akafirefox.sh
```

to run firefox: 
```sh
bash akafox.sh
```


4. optimize Speed

```sh
bash akaspeed.sh
```
5. Run first dApp
```sh
bash akadapp1.sh
```

View processes and VMs infos:
```sh
stacer
```

More Optimizatiions:

XRDP setting:
color quality : medium
interpolation level: low




Opem windows manager tweak: disable compositor
https://blog.programster.org/xfce-slow-desktop-compositing


sudo nano /etc/xrdp/xrdp.ini file,

 change crypt_level=high to crypt_level=None


#Login to github via personal dev token FIne grained Classic:
apt install gh

gh auth login
SSH
Y
Paste token




## Install More tools

AppFlowy(similar to Notion):
install
```sh
bash akaappflowy.sh
```
run
```sh
bash akaflowy.sh
```

Screen:
```sh
bash akascreen.sh
```
tutorial:inside akascreen.sh

python Ubuntu:
```sh
bash akapythonu.sh
```

python Debian:
```sh
bash akapythond.sh
```


web3:
```sh
bash akamweb3.sh
```

Jekyll Blog:
install;
```sh
bash akablog.sh
```
only run
```sh
bash akablogrun.sh
```
modify
```sh
bash akablogmodify.sh
```


react website:
```sh
bash akareact.sh
```



npm:
```sh
bash .sh
```


nvm:
```sh
bash .sh
```



visual studio:
Install:
```sh
bash akavisualstudio.sh
```

Run:
```sh
bash akastudio.sh
```


## Launch your own nodes

eth nodes: 
```sh
bash akanodesstart.sh
```
```sh
cd
```
```sh
bash akanodes.sh
```


seperate start  of consensus  client  and execution client
```sh
bash akanodesexec.sh
```

```sh
bash akanodecons.sh
```






batch block request:
```sh
python3 batchsample.py
```
to save data:
```sh
python3 appendbatchsample.py
```


index block data:
```sh

```
https://thegraph.com/docs/en/network/indexing/



dApp templates:

clone akazam templates:

```sh
bash .sh
```



## more tools

twitter bot:
```sh
bash akatwitter.sh
```


ens bot:
Install web3py
then 
Open enssample.py in visual studio and run with:
Input infura key
```sh
python3 enssampleinfura.py
```




discord bot:
```sh
bash akadiscord.sh
```


## OS Int
spiderfoot:
install:
```sh
bash akaspiderfoot.sh
```
launch:
```sh
bash akaspider.sh
```

## Simulating Keyboard Press

xdo tool:
```sh
bash akaxdotool.sh
```

tutorial:
#XDOKeys.pdf
#xdotool key KP_Enter

## enable root ssh login
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

sudo passwd

sudo systemctl restart ssh

## xrdp possible fixes

nano /etc/xrdp/startwm.sh
Add in the very top:

unset DBUS_SESSION_BUS_ADDRESS
unset XDG_RUNTIME_DIR
then:

sudo systemctl restart xrdp


another:
# echo "startxfce4" > ~/.Xsession
# chmod +x ~/.Xsession
# sudo systemctl restart xrdp.service



or full purge and restart setup from root:

1. Remove previously installed xrdp:
$ sudo systemctl disable xrdp
$ sudo systemctl stop xrdp

$ sudo apt purge xrdp
$ sudo apt purge xserver-xorg-core
$ sudo apt purge xserver-xorg-input-all
$ sudo apt purge xorgxrdp
2. Re-install xrdp & required packages:
$ sudo apt install xrdp
$ sudo apt install xserver-xorg-core
$ sudo apt install xserver-xorg-input-all
$ sudo apt install xorgxrdp
You also need to grant access to the /etc/ssl/private/ssl-cert-snakeoil.key file for xrdp user. It is available to members of the ssl-cert group by default.

$ sudo adduser xrdp ssl-cert           # add xrdp into ssl-cert group
$ sudo systemctl start xrdp            # start xrdp service
$ systemctl is-active xrdp             # check xrdp state
...
active
$ sudo systemctl enable xrdp           # start xrdp on system start
3. Reboot system:
$ sudo reboot
4. Firewall configuration:
You need to open access on port 3389.

$ sudo ufw allow 3389
It is more secure to open it only for your IP address or network. For example:

$ sudo ufw allow from 10.5.5.0/24 to any port 3389
The best practice is to use an SSH tunnel to connect to the remote desktop and make xRDP listen only for local connections.

5. Setup your RDP-client
Please note that in some cases the user who will connect to xRDP must log out before doing so!

Connect to your server using any RDP client.
Enter the user credentials of your Ubuntu computer.
Now you can see the remote desktop initial screen.
Related commands:
$ sudo systemctl status xrdp           # display current xrdp status

$ sudo systemctl start xrdp            # start xrdp service
$ sudo systemctl stop xrdp             # stop xrdp service
$ sudo systemctl restart xrdp          # restart xrdp service

$ sudo systemctl enable xrdp           # enable xrdp on system start
$ sudo systemctl disable xrdp          # disable xrdp on system start





## Retype

retype install:
```sh
npm install retypeapp --global
```
check updates:
```sh
retype watch
```
retype push read updates: 
```sh
retype build 
```


Build with us!

Write automation scripts with Bash.
https://devdocs.io/bash/

https://devtut.github.io/bash/jobs-and-processes.html#list-all-processes


Name them : aka****.sh

Test them: 

Pull request:
https://www.freecodecamp.org/news/how-to-make-your-first-pull-request-on-github-3/


