
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









shopt -u huponexit  


 parallel -j0 bash :::: <(ls script{1..3}.sh)
And you can also try using

$ parallel -j0 bash ::: script{1..3}.sh


$ ls script{1..5}.sh|xargs -n 1 -P 0 bash


$ wget http://ftp.gnu.org/gnu/parallel/parallel-latest.tar.bz2
Unzip it, it creates a new folder parallel-yyyymmdd
$ sudo tar xjf parallel-latest.tar.bz2
Change to new folder
$ cd parallel-yyyymmdd
Build the software in your machine
$ sudo ./configure && make
Install it
$ sudo make install
Switch to home directory
$ cd
How to Test Parallel ?
$ parallel



export LC_ALL=C


Save 10 seconds on 1000


>> SomeFile.txt


Run thousands of simple scripts in parallel
ulimit -u

* You need RAM for 6500 processes.
* If your task is CPU bound, it will be slower, because it needs much more context switches.
* If your task is I/O bound, having 6500 processes access different directories will also make it slower.
Your task may benefit from some parallel processes, but you should limit it to a small multiple of the number of CPU cores you have.


parallel 'cd {} && cp ../bip.sh . && bash ./bip.sh’ :::  *_directorynumber --jobs 10


This will run one script.py per CPU thread until all are done.
If script.py is not CPU bound you can adjust the number of jobs with --jobs:

* --jobs 10 run exactly 10 in parallel
* --jobs 200% run 2x CPU threads in parallel
* --jobs 0 run as many as you can until you hit a limit (such as: -bash: fork: retry: No child processes) then stay below that limit.


seq 1000 | parallel -j 8 --workdir $PWD ./myrun {}



seq -w 1 3 | parallel ./bip.sh file{}.txt


Gnu parallel


parallel -j0 bash ::: bip{1..5}.sh

parallel -j0 bash ::: bip{1..5}.sh


parallel -j0 bash ::: bip{1..3}.sh






	


	

