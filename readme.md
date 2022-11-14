
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
### Setup theme
```sh
bash aka11.sh # Choose light dm
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
2. add startxfce4 on last

### Start VM Modifications(Automatically)

```sh
rm ∼/etc/xrdp/startwm.sh 
cp ∼/filestoadd/starwm.sh ∼/etc/xrdp/startwm.sh
```

### Finally, Start Akazam
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
bash akanodes.sh
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




Build with us!

Write automation scripts with Bash.
https://devdocs.io/bash/


Name them : aka****.sh

Test them: 

Pull request:
https://www.freecodecamp.org/news/how-to-make-your-first-pull-request-on-github-3/

