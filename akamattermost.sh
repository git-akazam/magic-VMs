
#!/bin/bash


echo "preload" && docker run -it -p 81:8000 mattermost/focalboard & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

https://www.digitalocean.com/community/questions/how-to-set-up-a-siteurl-for-a-mattermost-server

https://docs.mattermost.com/install/install-docker.html