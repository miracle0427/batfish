import sys,re,os

name=sys.argv[1]

ver = name + "/logs/verified.txt"

#files = open(ver,"r")
arr = list()
with open(ver) as file:
	count = 0
	for line in file:	
		if count < 8:
			arr.append(line)
		else:
			arr.append(line.replace("reachability","block"))
		count = count + 1

files = open(ver,"w")

for line in arr:
	files.write(line)

files.close()

