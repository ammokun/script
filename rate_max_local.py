import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

bol=1.380649e-23
ee=1.602176634e-19

heat=np.zeros((302,1555))

file= open("../work210409/170_020_rad/output_reaction/00001.dat","r")
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

coefficient = coefficient*bol/ee
coefficient = np.round(coefficient,2)
#print(coefficient[:,1])

#print(r_rate[:,2])

for j in range(1,1555):
        heat[:,j] = coefficient[j-1,1] * r_rate[:,j]

ene_relax = np.sum(heat[:,134:253], axis=1)
joule = np.sum(heat, axis=1)

ene_relax = ene_relax*ee
joule = joule*ee
#print(joule)
print(ene_relax)
#print(heat[:,1])

#各反応の
max_heat = np.zeros(1555)
for j in range(1,1555):
        max_heat[j] = np.amax(heat[:,j])

max_heat = max_heat*ee

#print('{:e}'.format(max_heat[1]*ee))

"""
for j in range(1,1555):
        print(j, '{:e}'.format(max_heat[j]))
"""

#加熱ソースの最大値をソート
sorted_heat=sorted(max_heat)
sorted_heat.reverse()
"""
for j in range(1,1555):
        print('{:e}'.format(sorted_heat[j]))
"""
index=list(range(0))
reaction_name_sorted=list(range(0))


#加熱ソース最大値が大きい反応のインデックスを表示
for i in range(0,100):
        for j in range(1,1555):
                if(sorted_heat[i]==max_heat[j]):
                        #print(j)
                        index.append(j)
                        #print(reaction_name[j])
                        reaction_name_sorted.append(reaction_name[j])
#print(index)

for i in range(0,100):
        print(str('{:e}'.format(sorted_heat[i]))+" ",end="")
        print(reaction_name_sorted[i])


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

"""
#plt.plot(joule)
plt.plot(ene_relax)
ax = plt.gca()
ax.set_yscale('log')
plt.legend(loc='best')
ax.set_xlim([1,300])
#ax.set_ylim([1,1E13])
plt.show()
"""

