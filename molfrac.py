import numpy as np
import matplotlib.pyplot as plt


#ene_loss = np.loadtxt("./vibrate_00010.dat",delimiter=',')

file= open("./output_main/00020.dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
main = np.genfromtxt("temp.dat")

file= open("./output_density/00020.dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
density = np.genfromtxt("temp.dat")


file= open("./output_loss/00020.dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
ene_loss = np.genfromtxt("temp.dat")

#print(ene_loss[:,1])
#print(density[:,0])

#for i in range(1,20):
#    ene_loss[:,i] = (ene_loss[:,i]*density[:,i+2])

vibrate=np.zeros(302)
#print(vibrate)
#for i in range(1,20):
#    vibrate = vibrate+ene_loss[:,i]

for j in range(3,11):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,3]
for j in range(31,40):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,4]
for j in range(59,68):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,5]
for j in range(87,97):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,6]
for j in range(116,127):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,7]
for j in range(146,158):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,8]
for j in range(177,190):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,9]
for j in range(209,223):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,10]
for j in range(242,257):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,11]
for j in range(276,291):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,12]
for j in range(310,325):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,13]
for j in range(344,359):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,14]
for j in range(376,391):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,15]
for j in range(408,422):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,16]
for j in range(439,452):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,17]
for j in range(469,481):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,18]
for j in range(498,509):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,19]
for j in range(526,536):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,20]
for j in range(553,562):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,21]
for j in range(579,587):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,22]
for j in range(604,611):
        vibrate =vibrate+ene_loss[:,j+1]*density[:,23]       
#print(vibrate)
plt.plot(ene_loss[:,0],vibrate,label="vibrate")

#plt.plot(ene_loss[:,0],main[:,24],label="vibrate")

ax = plt.gca()
ax.set_yscale('log')
plt.legend()

plt.show()



