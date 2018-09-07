import sys
import re
import os
import glob

'''
smt-reachability srcIps=["60.0.10.0/24"], dstIps=["80.0.1.0/24"], ingressNodeRegex=Senozece, finalNodeRegex=SlovenskaTTBistrica

'''
dstfile = sys.argv[1]+"/configs/*.cfg"
allfile=glob.glob(dstfile)
ipdict = dict()

for dst in allfile:
	#dstfilename = dst
	#print dst
        if not(os.path.isfile(dst)):
		print "file doesn't exist"
        else:
		dstfile = ""+dst
		#dstfile = open(str(dstfilename), "r")
		with open(dstfile, 'r') as searchfile:
			for line in searchfile:
				if 'ip address' in line:
					array = dst.split("/")
					name = array[len(array)-1][:-4]
					ipdict[name] = line.split(" ")[3]

#exit()


#req = sys.argv[1]+"/allreq"
req = sys.argv[1]+"/allreq"
ver = sys.argv[1]+"/logs/verified.txt"
files = open(ver,"w")


with open(req) as file:
        polnum = 1
        for line in file:
                #m = re.search("\\[(.*?)\\]", line)
                line = line[:-9]
                me = re.search("PathReq\(.*\)", line)
                if me:
                        both=me.group(0).split("False")
                        #print both[0],both[1]
                        m=re.search("\\[(.*?)\\]", both[0])
                        found = m.group(1).replace("\'","").split(",")
                        src = found[0].replace(" ","")
                        dst = found[len(found)-1].replace(" ","")
                        #print src, dst
                        index = 0
                        interval="["
                        num = len(found)
                        for inter in found:
                                index = index + 1
                                inter=inter.replace(" ","")
                                if index == num:
                                        interval = interval + "'" + inter + "']"
                                else:
                                        interval = interval + "'" + inter + "',"

                        m=re.search("\\[(.*?)\\]", both[1])
                        found = m.group(1).replace("\'","").split(",")
                        index = 0
                        sec_interval="["
                        num = len(found)
                        for inter in found:
                                index = index + 1
                                inter=inter.replace(" ","")
                                if index == num:
                                        sec_interval = sec_interval + "'" + inter + "']"
                                else:
                                        sec_interval = sec_interval + "'" + inter + "',"


                        string = "smt-path-preference srcIps=[\""+ ipdict[src] + "\"], dstIps=[\"" + ipdict[dst] + "\"], ingressNodeRegex="+ str(src) + ", finalNodeRegex=" + str(dst) + ", prefs=[" + interval + "," + sec_interval +"]\n"
                        #print string
                        #print string
                        #files = open(req+str(polnum),"w")
                        files.write(string)
                polnum = polnum + 1

