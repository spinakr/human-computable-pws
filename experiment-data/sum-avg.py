import matplotlib.pyplot as plt
import json
import numpy as np
from pprint import pprint
from pylab import polyfit, poly1d
from scipy.stats import linregress

with open('all-data2.json') as data_file:
    datas = json.load(data_file)


calcs = []
usrCount=0

for sample in datas:
    tmp = []
    for calcSample in sample['results']:
        tmp.append(calcSample)
    
    calcs.append(tmp)
    usrCount+=1
   


maxlength=0
for i in range( len(calcs) ):
    if len(calcs[i]) > maxlength:
        maxlength = len(calcs[i])

sums=[]
counts=[]
for l in calcs:
    for i in range(maxlength):
        if len(sums)>i and len(l)>i :
            sums[i]+=l[i]
            counts[i]+=1.0
        elif len(l)> i:
            sums.append(l[i] )
            counts.append(1.0)
  
avgs=[]
x=[]
count=0
for i in range( len( sums ) ):
    x.append(count)
    count+=1
    avgs.append(1-(sums[i]/counts[i]))
    print "Sum:  " + str( sums[i] ) + " | count " + str( counts[i] ) + " | avg: " + str(sums[i]/counts[i])


plt.scatter(x,avgs)


fit = polyfit(x,avgs,1)
fit_fn = poly1d(fit)

plt.plot(fit_fn(x))

plt.show()

#    plt.scatter(x,y)
#
#
#    slopeSum+= linregress(x,y)[0]
#    slopeCount+=1
#

#plt.show()


#x = datas[0]['calcTimes']

#n, bins, patches = plt.hist(x, 50, normed=1, facecolor='green', alpha=1)
#plt.axis([ 0, 20, 0, 0.16 ])









#radius = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0]
#area = [3.14159, 12.56636, 28.27431, 50.26544, 78.53975, 113.09724]
#plt.plot(radius, area)
#plt.show()



