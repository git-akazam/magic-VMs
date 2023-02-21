
#!/bin/bash


echo "preload" && apt-get install screen & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait












# For Ubuntu, use the command with sudo:
# sudo apt-get install screen
# And for Fedora, CentOS, SuSE, and Mandriva there are also screen packages that you can install with yum/yast/urpmi/...
# Fedora and CentOS
# yum install screen
# 2 Using screen Command
# With screen you can create one or more sessions in your current SSH terminal. Just run


# screen
# to start it. This creates a screen session or window (although you don't see it as such) in your current SSH terminal:
# ￼
# Press Space or Return to get to the command prompt:
# ￼


# Looks like your normal SSH terminal, doesn't it?
# Now I'm going to describe the most important screen commands that you need to control screen. These commands begin with CTRL a to distinguish them from normal shell commands.

# * Ctrl a c - Creates a new screen session so that you can use more than one screen session at once.
# * Ctrl a n - Switches to the next screen session (if you use more than one).
# * Ctrl a p - Switches to the previous screen session (if you use more than one).
# * Ctrl a d - Detaches a screen session (without killing the processes in it - they continue).
# To close a screen session where all tasks are finished you can type
# exit
# Now let's play around with it a little bit. In our screen window, we run the command
# top
# This should look like this:



# ￼
# Now let's create another screen session by typing
# Ctrl a c
# A new, blank screen session opens, and there we run
# tail -f /var/log/mail.log
# to have an ongoing look at our mail log:
# ￼
# Advertisement

# Now you can browse your two screen sessions by running
# Ctrl a n
# or
# Ctrl a p
# To detach a screen session and return to your normal SSH terminal, type
# Ctrl a d
# Back on your normal SSH terminal, you can run
# screen -ls
# to get a list of your current screen sessions:
# There are screens on:
#         2477.pts-0.server1      (Detached)
#         2522.pts-0.server1      (Detached)
# 2 Sockets in /var/run/screen/S-root.
# To reconnect to one of these sessions, run
# screen -r 2477.pts-0.server1
# where 2477.pts-0.server1 is the name of one of the sessions from the screen -ls output.
# To leave and finish a screen session, finish all current tasks in it (top can be finished by typing q, tail -f /var/log/mail.log can be finished by typing CTRL c) and then type
# exit
# You will then fall back to another screen session (if you use more than one) or to the normal SSH terminal, if no more screen sessions are open.
# If you want to learn more about screen, run
# man screen
# 3 My Connection Dropped - What Can I Do?
# Now let's assume you compile a kernel in a screen session, something which normally takes a long time, and suddenly your connection drops. Thanks to screen your work isn't lost. Once your connection is back up, log in to your system with SSH again and run
# screen -ls
# as shown in chapter 2. From the results pick one session (e.g. 2477.pts-0.server1) and reattach to it:
# screen -r 2477.pts-0.server1
# If you picked the right session, you should find your kernel still compiling (if it hasn't finished in the meantime) so that you can continue your work.

# script ~/log.txt

# script -c ./home/runner20/main.bash -f log.txt

# 1. chmod +x script-name-here.sh
# 2. To run your script :./script-name-here.shAnother option is as follows to execute shell script:sh script-name-here.shORbash script-name-here.sh
# 3. 


# screen -rx

# Screen -a

# screen -X -S 

#go into attached screen : screen - X

#rename  screen screen -S 25314.pts-0.v2202302185950219674 -X sessionname frontend2