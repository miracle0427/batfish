import re
import sys

if  len(sys.argv) != 2:
	print "Enter file name"
	sys.exit(0)
filename = sys.argv[1]
with open('enc.smt', 'r') as infile, open(filename, 'w') as outfile:
    data = infile.read()
    data = data.replace("\\|", "")
    #data = re.sub("![0-9]\|", "|", data)
    outfile.write(data)
