

#!/bin/bash


# check if the reboot flag file exists. 
# We created this file before rebooting.


if [ ! -f /var/run/resume-after-reboot ]; then
  echo "running script for the first time.."
  
  # run your scripts here

###############


  PID=$!
  echo "aka1" && bash aka1.sh & sleep 1 &
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

  



  
else 
  echo "resuming script after reboot.."
  
  # Remove the line that we added in zshrc
  sudo sed -i '/bash/d' ~/.bashrc 
  
  # remove the temporary file that we created to check for reboot
  sudo rm -f /var/run/resume-after-reboot

  # continue with rest of the script


fi






  PID=$!
  echo "aka2" && bash aka2 & sleep 1 &
  wait $!
  echo "Process aka2 ended at time $(date +%T) with exit status $?"
  wait
  