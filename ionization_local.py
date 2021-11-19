import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

bol=1.380649e-23
ee=1.602176634e-19

heat=np.zeros((302,1555))
x=160

file= open("../work210409/170_020_rad/output_reaction/00324.dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
r_rate = np.genfromtxt("temp.dat")

file= open("energy_coefficient_data.dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
coefficient = np.genfromtxt("temp.dat")

reaction_name=list(range(1))
file= open("name.txt","r")
while True:
        string = file.readline()
        reaction_name.append(string)
        if not string:
                break
file.close()
#print(reaction_name[1])


#print(reaction_dict)


r_rate = np.nan_to_num(r_rate)

#print(coefficient[:,1])

#print(r_rate[:,2])

#各反応の
rate_max = np.zeros(1555)
for j in range(1,1555):
        rate_max[j] = np.amax(r_rate[x,j])

#print('{:e}'.format(max_heat[1]*ee))

"""
for j in range(1,1555):
        print(j, '{:e}'.format(max_heat[j]))
"""

#加熱ソースの最大値をソート
rate_max_sorted=sorted(rate_max)
rate_max_sorted.reverse()
"""
for j in range(1,1555):
        print('{:e}'.format(sorted_heat[j]))
"""
index=list(range(0))
rate_name_sorted=list(range(0))


#加熱ソース最大値が大きい反応のインデックスを表示
for i in range(1,1555):
        for j in range(1,1555):
                if(rate_max_sorted[i]==rate_max[j]):
                        #print(j)
                        index.append(j)
                        #print(reaction_name[j])
                        rate_name_sorted.append(reaction_name[j])
#print(index)


for i in range(1,1555):
        if("E+E" in rate_name_sorted[i]):
                print(str('{:e}'.format(rate_max_sorted[i]))+" ",end="")
                print(rate_name_sorted[i])


""""
plt.plotene_loss[:,0],vibrate5,label="N2(v5)")
plt.plot(ene_loss[:,0],vibrate6,label="N2(v6)")
plt.plot(ene_loss[:,0],vibrate7,label="N2(v7)")
plt.plot(ene_loss[:,0],vibrate8,label="N2(v8)")
plt.plot(ene_loss[:,0],vibrate9,label="N2(v9)")

"""
"""
plt.plot(ene_loss[:,0],vibrate19,label="N2(v19)")
plt.plot(ene_loss[:,0],vibrate20,label="N2(v20)")
"""
"""
plt.plot(vib[:,0],vib[:,1],label="N2(v0)")
"""


"""
plt.plot(density[:,0],density[:,2],label="N2(v0)")
plt.plot(density[:,0],density[:,3],label="N2(v1)")
plt.plot(density[:,0],density[:,4],label="N2(v2)")
plt.plot(density[:,0],density[:,5],label="N2(v3)")
plt.plot(density[:,0],density[:,6],label="N2(v4)")
plt.plot(density[:,0],density[:,7],label="N2(v5)")
plt.plot(density[:,0],density[:,8],label="N2(v6)")
plt.plot(density[:,0],density[:,9],label="N2(v7)")
plt.plot(density[:,0],density[:,10],label="N2(v8)")
plt.plot(density[:,0],density[:,11],label="N2(v9)")
"""
"""
plt.plot(ene_loss[:,0],vibrate,label="vibrate")

#plt.plot(ene_loss[:,0],main[:,24],label="vibrate")
"""
"""
plt.plot(max_heat)

ax = plt.gca()
ax.set_yscale('log')
plt.legend(loc='best')
ax.set_xlim([134,252])
ax.set_ylim([1,1E10])
"""


#plt.plot(joule)
#plt.plot(-joule)
##plt.plot(ene_relax)
#ax = plt.gca()
#ax.set_yscale('log')
#plt.legend(loc='best')
#ax.set_xlim([1,300])
##ax.set_ylim([1,1E13])
#plt.show()
