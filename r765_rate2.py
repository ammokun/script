import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

bol=1.380649e-23
ee=1.602176634e-19
planck=6.62607e-34 #[Js]
cc=2.99792458e8 
omega_n2=2358.6e2*cc #[rad/s]

density = 2.152e25

temp = np.logspace(2.47,5,50, base=10)
l = (2*(1-0.25)/((3.14**2)*0.25**0.75))*((temp/113200)**3)*(1+(7*(1-0.25)*(1+0.25**0.5)*temp)/(2*113200))
tv = 3000

r765_2 = np.zeros(50)
r765_1 = np.zeros(50)
z = np.zeros(50)

#z =(1-np.exp(-3354/tv))/(1-np.exp(-3354/temp))*(1-l)*np.exp(-113200*(1/tv-1/temp))+l*np.exp(-113200*(1/(0.25*tv+0.75*temp)-1/temp))
z = (1-np.exp(-3354/tv))/(1-np.exp(-3354/temp))*np.exp(-113200*(1/tv-1/temp))*np.exp(3*(tv/temp-1))

for i in range (50): #cm^3/s
    if 0<temp[i] and temp[i]<7500:
        r765_2[i] = 5.31E-8 * (1.0-np.exp(-3354/temp[i])) * np.exp(-113200/temp[i])
    elif 7500<temp[i] and temp[i]<30000:
        r765_2[i] = 2.66E-16 * np.exp(temp[i]/2500)
    else:
        r765_2[i] = 5.31E-8 * (1.0-np.exp(-3354/temp[i])) * np.exp(-113200/temp[i])


#plt.scatter(temp, r765_1)
#plt.scatter(temp, r765_2)

plt.scatter(temp, z)
ax = plt.gca()
ax.set_yscale('log')
ax.set_xscale('log')
plt.legend(loc='best')
ax.set_xlim([300,10000])
#ax.set_ylim([1E-5,1E5])
plt.show()


