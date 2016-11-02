#!/usr/bin/python 

import math
import sys
f = open(sys.argv[1], 'r')
all_lines = f.readlines()
#print all_lines
rtt_sum = 0.0
for line in all_lines:
    # print line
    rtt_sum += long(line.rstrip())
cnt = len(all_lines)
print str(rtt_sum/cnt/10e9) + " " + str(rtt_sum) + " " + str(cnt) 
