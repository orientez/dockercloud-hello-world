#!/usr/bin/python 

import math
import sys
f = open(sys.argv[1], 'r')
all_lines = f.readlines()
#print all_lines
rtt_sum = 0.0
num_list = []
for line in all_lines:
    val = long(line.rstrip())
    num_list.append(val)
    rtt_sum += val
cnt = len(all_lines)
print "avg:" + str(rtt_sum/cnt/10e9) + " cnt:" + str(cnt) + " min:" + str(min(num_list)/10e9) + " max:" + str(max(num_list)/10e9) 
