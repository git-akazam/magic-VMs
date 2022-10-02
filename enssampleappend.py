import subprocess 
import sys 

output_file = 'enssample.txt'
sys.stdout = open(output_file, 'a')
subprocess.call(['python3', 'enssample.py'], stdout=sys.stdout, stderr=subprocess.STDOUT)


