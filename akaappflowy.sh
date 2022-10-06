
#!/bin/bash


echo "cloneapp" && git clone https://github.com/AppFlowy-IO/appflowy.git & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait
#unzip AppFlowy-main.zip

echo "aptinstalls" && sudo apt-get install curl build-essential libsqlite3-dev libssl-dev clang cmake ninja-build pkg-config libgtk-3-dev unzip & sleep 5 &
wait $PID
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

echo "cloneflutter" && git clone https://github.com/flutter/flutter.git & sleep 1 &
wait $PID
echo "Process 2 ended at time $(date +%T) with exit status $?"
wait

echo "path1" && echo "export PATH=\$PATH:"`pwd`"/bin" >> ~/.profile & sleep 1 &
wait $PID
echo "Process 3 ended at time $(date +%T) with exit status $?"
wait

echo "path2" && export PATH="$PATH:`pwd`/bin" & sleep 1 &
wait $PID
echo "Process 4 ended at time $(date +%T) with exit status $?"
wait

echo "installcargo" && apt install cargo & sleep 5 &
wait $PID
echo "Process 5 ended at time $(date +%T) with exit status $?"
wait

echo "installflutter" && snap install flutter --classic & sleep 5 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait

echo "cdapp" && cd /appflowy & sleep 1 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait

echo "install" && ./frontend/scripts/install_dev_env/install_linux.sh & sleep 5 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait

echo "export" && export PATH="$PATH":"$HOME/.pub-cache/bin" & sleep 1 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait

echo "rustup" && snap install rustup --classic & sleep 5 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait

echo "cdfront" && cd /frontend & sleep 1 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait

echo "cargomake" && cargo make -p development-linux-x86_64 appflowy-linux-dev & sleep 1 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait

echo "cdpro" && cd product/0.0.5.2/linux/Debug/AppFlowy/ & sleep 1 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait

echo "launchapp" && ./app_flowy & sleep 1 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait








 










































	


	

