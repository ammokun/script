import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

bol=1.380649e-23
ee=1.602176634e-19
planck=6.62607e-34 #[Js]
cc=2.99792458e8 
omega_n2=2358.6e2*cc #[rad/s]

density = 2.152e25

ene_vibN2 = planck*omega_n2/bol #3390.39 K

tg = np.logspace(2.47,4,50, base=10)


vtrate1 = 7.8e-12*tg*(np.exp(-218/(np.power(tg,1/3)) + 690/tg ))*1/(1 - np.exp(-ene_vibN2/tg))
vtrate2 = 7.8e-12*tg*(np.exp(-218/(np.power(tg,1/3)) + 690/tg ))*(1 - np.exp(-ene_vibN2/tg))

rec_rate_1 = 1.8e-33*np.exp(435/tg)*3
rec_rate_2 = np.power(10,16.3)/(6.02e23)/(6.02e23)*np.power(tg,0.47)
plt.scatter(tg, rec_rate_1)
plt.scatter(tg, rec_rate_2)
ax = plt.gca()
ax.set_yscale('log')
ax.set_xscale('log')
plt.legend(loc='best')
#ax.set_xlim([1e-2,1e2])
#ax.set_ylim([1,1E13])
plt.show()


