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


ene_v = density * planck*omega_n2/(np.exp(planck*omega_n2/(bol*temp))-1)

plt.scatter(ene_v, temp)
ax = plt.gca()
ax.set_yscale('log')
ax.set_xscale('log')
plt.legend(loc='best')
#ax.set_xlim([1e-2,1e2])
#ax.set_ylim([1,1E13])
plt.show()


