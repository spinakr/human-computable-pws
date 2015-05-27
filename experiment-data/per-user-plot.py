import matplotlib.pyplot as plt
import json
import numpy as np
from pprint import pprint
from pylab import polyfit, poly1d
from scipy.stats import linregress

with open('usr-data.json') as data_file:
    datas = json.load(data_file)





#mu, sigma = 100, 15
#x = mu + sigma*np.random.randn(10000)
slopeSum = 0
slopeCount=0

for sample in datas:
    count=0
    x=[]
    y=[]

    for calcSample in sample['calcTimes']:
        x.append(count)
        y.append(calcSample)
        count+=1

    plt.scatter(x,y)

    fit = polyfit(x,y,1)
    fit_fn = poly1d(fit)

    plt.plot(fit_fn(x))

    slopeSum+= linregress(x,y)[0]
    slopeCount+=1


print "Average slope :   " + str(slopeSum/slopeCount)
    


#x = datas[0]['calcTimes']

#n, bins, patches = plt.hist(x, 50, normed=1, facecolor='green', alpha=1)
#plt.axis([ 0, 20, 0, 0.16 ])


plt.show()







#radius = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0]
#area = [3.14159, 12.56636, 28.27431, 50.26544, 78.53975, 113.09724]
#plt.plot(radius, area)
#plt.show()



