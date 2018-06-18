# -*- coding: utf-8 -*-
import numpy as np
import matplotlib.pyplot as plt
m = np.array([[36, 0x2700],[35, 0x2660],[34, 0x2580],[33, 0x2480],[32, 0x23a0],[31, 0x22c0],[29, 0x2060],[28, 0x1fa0],[10, 0x1340],[12, 0x13c0],[13, 0x1420],[14, 0x1480],[15, 0x14c0],[16, 0x14e0],[17, 0x1520],[18, 0x1560],[19, 0x15c0],[20, 0x16e0],[21, 0x17e0],[23, 0x1800],[24, 0x18e0],[25, 0x1920],[26, 0x1b20],[27, 0x1bc0],[64, 0x3c40],[62, 0x3b60],[60, 0x3a20],[59, 0x3a20],[58, 0x3980],[57, 0x38e0],[56, 0x3880],[55, 0x3800],[54, 0x3740],[53, 0x36c0],[52, 0x3620],[51, 0x35c0],[50, 0x3540],[49, 0x34a0],[48, 0x33e0],[46, 0x32c0],[43, 0x2e20],[41, 0x2da0],[40, 0x2be0],[32, 0x2360]])
y = (m[:,1]>>5)*0.125
x =m[:,0]
xt = np.linspace(0,70, num=71)
yt = xt
err = []
for i in xt:
    if i in x:
        ind = np.argwhere(x==i)[0]
        err.append(np.absolute(y[int(ind)] - i))

std = np.std(err)
max = np.max(err)
print(std)
print(max)
fit,cov = np.polyfit(xt,yt,1, cov=True)
fit_fn = np.poly1d(fit)
# fit_fn is now a function which takes in x and returns an estimate for y
err = np.std([x,y])

plt.plot(xt,yt+max, '-k', label='Max Deviation')
plt.plot(xt,yt-max, '-k')
plt.plot(xt, yt, '-r', label='Linear line')
plt.plot(x,y, 'bo', label='Data')

plt.xlim(xmin=0, xmax=70)
plt.ylim(ymin=0, ymax=70)
plt.title('Temperature Reference measurements')
plt.ylabel('Temperature Measurement [°C]')
plt.xlabel('Temperature Reference [°C]')
plt.legend(bbox_to_anchor=(.65, .25), loc=2, borderaxespad=0.)

plt.show()

