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
r765 = np.zeros(50)
for i in range (50):
    if 0<temp[i] and temp[i]<7500:
        r765[i] = 5.31E-8 * (1.0-np.exp(-3354/temp[i])) * np.exp(-113200/temp[i])
    elif 7500<temp[i] and temp[i]<30000:
        r765[i] = 2.66E-16 * np.exp(temp[i]/2500)
    else:
        r765[i] = 5.31E-8 * (1.0-np.exp(-3354/temp[i])) * np.exp(-113200/temp[i])

plt.scatter(temp, r765)
ax = plt.gca()
ax.set_yscale('log')
ax.set_xscale('log')
plt.legend(loc='best')
#ax.set_xlim([1e-2,1e2])
ax.set_ylim([1E-20,1E-9])
plt.show()


