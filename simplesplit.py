import sys
import re
import os

'''
smt-reachability srcIps=["60.0.10.0/24"], dstIps=["80.0.1.0/24"], ingressNodeRegex=Senozece, finalNodeRegex=SlovenskaTTBistrica

'''

#req = sys.argv[1]+"/allreq"
req = sys.argv[1]+"/allreq"
ver = sys.argv[1]+"/logs/verified.txt"
files = open(ver,"w")
with open(req) as file:
        polnum = 1
        for line in file:
                m = re.search("\\[(.*?)\\]", line)
                if m:
                        found = m.group(1).replace("\'","").split(",")
                        src = found[0].replace(" ","")
                        dst = found[len(found)-1].replace(" ","")
                        #print src, dst
                        string = "smt-reachability srcIps=[\"60.0."+ str(polnum) + ".0/24\"], dstIps=[\"80.0." + str(polnum) + ".0/24\"], ingressNodeRegex="+ str(src) + ", finalNodeRegex=" + str(dst) + "\n"
                        #print string
                        #files = open(req+str(polnum),"w")
                        files.write(string)
                polnum = polnum + 1

