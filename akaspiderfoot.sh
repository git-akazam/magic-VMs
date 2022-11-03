

#!/bin/bash


PID=$!
echo "wegetspider" && wget https://github.com/smicallef/spiderfoot/archive/v4.0.tar.gz & sleep 1 &
wait $!
echo "Process 14 ended at time $(date +%T) with exit status $?"
wait


PID=$!
echo "wgetinstall" && tar zxvf v4.0.tar.gz & sleep 1 &
wait $!
echo "Process 15 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "wgetinstall" && cd spiderfoot-4.0/ && pip3 install -r requirements.txt && python3 ./sf.py -l 127.0.0.1:5001 & sleep 1 &
wait $!
echo "Process 15 ended at time $(date +%T) with exit status $?"
wait
