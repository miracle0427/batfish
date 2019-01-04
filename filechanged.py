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
import os

if len(sys.argv) < 2:
	print "no config passed"
	exit()
config = sys.argv[1]+"/logs/reach"

changed=set()

for conf in os.listdir(config):
	#print conf
	with open((config+"/"+conf)) as file:
		#print config+"/"+conf
		lines = file.readlines()
		for i in range(0,len(lines)):
			line = lines[i]
			m = re.search("@.*", line)
			if m:
				device=m.group(0).replace(" () Bool","").replace("@","")
				if "false" in lines[i+1]:
					#print device
					changed.add(device)

print config,len(changed)#,changed
exit()

