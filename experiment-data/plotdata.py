import matplotlib.pyplot as plt
import json
import numpy as np
from pprint import pprint

with open('data.json') as data_file:
    datas = json.load(data_file)





#mu, sigma = 100, 15
#x = mu + sigma*np.random.randn(10000)

x=[]
for sample in datas:
    for calcSample in sample['calcTimes']:
        x.append(calcSample)


#x = datas[0]['calcTimes']

n, bins, patches = plt.hist(x, 50, normed=1, facecolor='green', alpha=1)
#plt.axis([ 0, 20, 0, 0.16 ])

plt.show()







#radius = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0]
#area = [3.14159, 12.56636, 28.27431, 50.26544, 78.53975, 113.09724]
#plt.plot(radius, area)
#plt.show()



