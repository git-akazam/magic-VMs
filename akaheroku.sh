
#!/bin/bash


echo "preload" && sudo apt install preload & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

echo "aptupdate" && sudo apt update & sleep 1 &
wait $PID
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && sudo apt install tlp tlp-rdw & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && systemctl tlp.service & sleep 1 &
wait $PID
echo "Process 3 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && sudo tlp start & sleep 1 &
wait $PID
echo "Process 4 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && apt install stacer & sleep 1 &
wait $PID
echo "Process 5 ended at time $(date +%T) with exit status $?"
wait

echo "preload" && sudo apt install zram-config & sleep 1 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait
#re-test if optimization

Install the Heroku CLI
Download and install the Heroku CLI.
If you haven't already, log in to your Heroku account and follow the prompts to create a new SSH public key.
$ heroku login
Clone the repository
Use Git to clone staginglanding's source code to your local machine.
$ heroku git:clone -a staginglanding 
$ cd staginglanding
Deploy your changes
Make some changes to the code you just cloned and deploy them to Heroku using Git.
$ git add .
$ git commit -am "make it better"
$ git push heroku master











	





