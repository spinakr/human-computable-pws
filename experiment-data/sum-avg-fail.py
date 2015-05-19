import matplotlib.pyplot as plt
import json
import numpy as np
from pprint import pprint
from pylab import polyfit, poly1d
from scipy.stats import linregress

with open('fail-vs-calc.json') as data_file:
    datas = json.load(data_file)


x=[]
y=[]
f = open("fail-vs-calctime.dat", "a")
for sample in datas:
    tmp = []
    print "Failure rate: " + str(1-sample['failAvg'])
    f.write(str( 1-sample['failAvg'] ) + " " + str(sample['calcAvg']) + "\n")
    
    y.append(1-sample['failAvg'])
    x.append(sample['calcAvg'])
    print "Average calculation time: " + str(sample['calcAvg'])
    #for calcSample in sample['results']:
    
   

plt.scatter(x,y)

plt.show()

