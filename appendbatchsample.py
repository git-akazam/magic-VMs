import subprocess 
import sys 

output_file = 'alphablocks.txt'
sys.stdout = open(output_file, 'a')
subprocess.call(['python3', 'automateverify.py'], stdout=sys.stdout, stderr=subprocess.STDOUT)

    