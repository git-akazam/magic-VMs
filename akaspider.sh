

#!/bin/bash



PID=$!
echo "wgetinstall" && cd spiderfoot-4.0/ && python3 ./sf.py -l 127.0.0.1:5001 & sleep 1 &
wait $!
echo "Process 15 ended at time $(date +%T) with exit status $?"
wait
