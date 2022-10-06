
#!/bin/bash



PID=$!
echo "xrdpstart" && sudo service xrdp start & sleep 1 &
wait $!
echo "Process 10 ended at time $(date +%T) with exit status $?"
wait


