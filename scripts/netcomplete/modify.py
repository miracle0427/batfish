'''
    PathReq(Protocols.OSPF, "Sezana", ['Bled', 'Kranj', 'Koper', 'Divaca', 'Senozece', 'Sezana'], False),
    PathReq(Protocols.OSPF, "Ptuj", ['Bled', 'Kranj', 'Ljubljana', 'Maribor', 'Ptuj'], False),
    PathReq(Protocols.OSPF, "NovaTTGorica", ['Bled', 'Tolmin', 'NovaTTGorica'], False),
    PathReq(Protocols.OSPF, "Maribor", ['Bled', 'Kranj', 'Ljubljana', 'Maribor'], False),

interface Loopback0
 ip address 42.42.42.1 255.255.255.0 
!

'''
import sys
import os
import re

if len(sys.argv) < 2:
	print "no config passed"
	exit()
config = sys.argv[1]
req = config+"/allreq"
with open(req) as file:
	polnum = 1
	for line in file:
		m = re.search("\\[(.*?)\\]", line)
		if m:
			found = m.group(1).replace("\'","").split(",")
			src = found[0].replace(" ","")
			dst = found[len(found)-1].replace(" ","")
			#print src, dst
			#exit()
			srcfilename = config+"/configs/"+src+".cfg"
			dstfilename = config+"/configs/"+dst+".cfg"
			if not(os.path.isfile(srcfilename) and os.path.isfile(dstfilename)):
				print "src or dst file doesn't exist"
			else:
				pol = str(polnum)
				pol2num = str(polnum / 254)
				pol3num = str(polnum % 254)

				srcfile = open(srcfilename, "r")
				srccontent = srcfile.readlines()
				srcintf = [x for x in range(len(srccontent)) if re.search("interface",srccontent[x].lower())]
				#print srcnwindex[0], srcintf[0]
				interface = "interface Loopback"+pol+"\n ip address 60." + pol2num + "." + pol3num + ".0 255.255.255.0\n!\n"
				#print interface
				#print network
				srcfile.close()

				index = srcintf[0]
				srccontent[index] = interface + srccontent[index]

				srcfile = open(srcfilename, "w")
				srcfile.writelines(srccontent)
				srcfile.close()

				dstfile = open(dstfilename, "r")
				dstcontent = dstfile.readlines()
				dstintf = [x for x in range(len(dstcontent)) if re.search("interface",dstcontent[x].lower())]
				#print dstnwindex[0], dstintf[0]

				interface = "interface Loopback"+pol+"\n ip address 80." + pol2num + "." + pol3num + ".0 255.255.255.0\n!\n"
				#print interface
				#print network
				dstfile.close()

				index = dstintf[0]
				dstcontent[index] = interface + dstcontent[index]

				dstfile = open(dstfilename, "w")
				dstfile.writelines(dstcontent)
				dstfile.close()

				polnum = polnum + 1
file.close()
			

################################### ================================================   ###########################################

req = config+"/req"
with open(req) as file:
	polnum = 1
	for line in file:
		m = re.search("\\[(.*?)\\]", line)
		if m:
			found = m.group(1).replace("\'","").split(",")
			src = found[0].replace(" ","")
			dst = found[len(found)-1].replace(" ","")
			#print src, dst
			srcfilename = config+"/configs/"+src+".cfg"
			dstfilename = config+"/configs/"+dst+".cfg"
			if not(os.path.isfile(srcfilename) and os.path.isfile(dstfilename)):
				print "src or dst file doesn't exist"
			else:
				pol = str(polnum)
				pol2num = str(polnum / 254)
				pol3num = str(polnum % 254)

				srcfile = open(srcfilename, "r")
				srccontent = srcfile.readlines()
				srcnwindex = [x for x in range(len(srccontent)) if re.search("bgp log-neighbor-changes",srccontent[x].lower())]
				#print srcnwindex[0], srcintf[0]
				network = " network 60." + pol2num + "." + pol3num + ".0 mask 255.255.255.0\n"
				#print interface
				#print network
				srcfile.close()

				index = srcnwindex[0]
				srccontent[index] = srccontent[index] + network

				srcfile = open(srcfilename, "w")
				srcfile.writelines(srccontent)
				srcfile.close()

				dstfile = open(dstfilename, "r")
				dstcontent = dstfile.readlines()
				dstnwindex = [x for x in range(len(dstcontent)) if re.search("bgp log-neighbor-changes",dstcontent[x].lower())]
				#print dstnwindex[0], dstintf[0]

				network = " network 80." + pol2num + "." + pol3num + ".0 mask 255.255.255.0\n"
				#print interface
				#print network
				dstfile.close()

				index = dstnwindex[0]
				dstcontent[index] = dstcontent[index] + network

				dstfile = open(dstfilename, "w")
				dstfile.writelines(dstcontent)
				dstfile.close()

				polnum = polnum + 1
file.close()
			
