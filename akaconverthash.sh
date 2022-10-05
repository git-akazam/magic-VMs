
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







import hashlib



import pandas as pd
df = pd.DataFrame.from_dict({
    'ID': [0,
    ],
    'Numbers': [
'0'
,'1']
})
print(df.to_string())


def hash_unicode(a_string):
    return hashlib.sha256(a_string.encode('utf-8')).hexdigest()
df['Hashed Numbers'] = df['Numbers'].apply(hash_unicode)
print(df.to_string())

first_column = df.iloc[:, 2]

hashedn = (first_column.to_string())

	


	

