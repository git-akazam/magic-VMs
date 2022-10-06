
#!/bin/bash


echo "cdpro" && cd appflowy/frontend/app_flowy/product/0.0.5.2/linux/Debug/AppFlowy/ & sleep 1 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait

echo "launchapp" && ./app_flowy & sleep 1 &
wait $PID
echo "Process 6 ended at time $(date +%T) with exit status $?"
wait








 










































	


	

