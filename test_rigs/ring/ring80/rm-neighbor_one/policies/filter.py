import re
import sys

filename = "reachability.txt"
dstIp = dict()
with open(filename, 'r') as infile:
    for data in infile:
    #data = infile.read()
       prop = data.split(" ")
       args = prop[1].split(",")[1].replace("dstIps=","").split("/")[0].replace("\'","").replace("[","").replace("]","")
       if args not in dstIp:
          dstIp[args] = list()
       dstIp[args].append(data.replace(",",", "))

for ip in dstIp:
    dirf = "reach/" + ip
    outfile = open(dirf, "w+")
    for line in dstIp[ip]:
	outfile.write(line)

filename = "pathlength.txt"
dstIp = dict()
with open(filename, 'r') as infile:
    for data in infile:
    #data = infile.read()
       prop = data.split(" ")
       args = prop[1].split(",")[1].replace("dstIps=","").split("/")[0].replace("\'","").replace("[","").replace("]","")
       if args not in dstIp:
          dstIp[args] = list()
       dstIp[args].append(data.replace(",",", "))

for ip in dstIp:
    dirf = "path/" + ip
    outfile = open(dirf, "w+")
    for line in dstIp[ip]:
       outfile.write(line)
