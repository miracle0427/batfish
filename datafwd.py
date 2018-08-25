import sys
import os
import re
import os

if len(sys.argv) < 2:
        print "no config passed"
        exit()
modelfile = sys.argv[1]
databool = dict()
with open((modelfile)) as file:
        #print config+"/"+conf
        lines = file.readlines()
        for i in range(0,len(lines)):
                line = lines[i]
                m = re.search(".*DATA-FORWARDING.*", line)
                if m:
                        #(define-fun |0_SLICE-MAIN_DATA-FORWARDING_CamB6A_GigabitEthernet7| () Bool
                        #print m.group(0)
                        fwd=m.group(0).replace(" () Bool","").replace("(define-fun ","").replace("  ","")
			if (i+1) <= len(lines):
	                        if "false" in lines[i+1]:
        	                        databool[fwd] = "false"
                	        else:
                        	        databool[fwd] = "true"

write=open((modelfile+".dfw"),"w")
for i in databool:
        write.write(i+" "+databool[i]+"\n")
