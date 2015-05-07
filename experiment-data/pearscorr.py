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
   x.extend(sample['calcTimes']) 
   y.extend(sample['results'])



print "Correlation coef:   " + str(np.corrcoef(x,y)[0,1])


#x = datas[0]['calcTimes']

#n, bins, patches = plt.hist(x, 50, normed=1, facecolor='green', alpha=1)
#plt.axis([ 0, 20, 0, 0.16 ])

plt.scatter(x,y)

plt.show()







#radius = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0]
#area = [3.14159, 12.56636, 28.27431, 50.26544, 78.53975, 113.09724]
#plt.plot(radius, area)
#plt.show()



