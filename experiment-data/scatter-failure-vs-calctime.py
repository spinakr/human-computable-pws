import matplotlib.pyplot as plt
import json
import numpy as np
from pprint import pprint
from scipy.stats import linregress


with open('sample-data.json') as data_file:
    datas = json.load(data_file)





#mu, sigma = 100, 15
#x = mu + sigma*np.random.randn(10000)

x=[]
y=[]
for sample in datas:
    summx=0.0
    countx=0.0
    for calcSample in sample['calcTimes']:
        summx += calcSample
        countx += 1

    x.append(summx/countx)

    summy=0.0
    county=0.0
    for resSample in sample['results']:
        summy += resSample
        county += 1

    y.append(summy/county)


regress = linregress(x,y)

print "Correlation coef:   " + str(regress[2])


#x = datas[0]['calcTimes']

#n, bins, patches = plt.hist(x, 50, normed=1, facecolor='green', alpha=1)
#plt.axis([ 0, 20, 0, 0.16 ])

plt.scatter(x,y)

plt.show()







#radius = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0]
#area = [3.14159, 12.56636, 28.27431, 50.26544, 78.53975, 113.09724]
#plt.plot(radius, area)
#plt.show()



