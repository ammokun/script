import numpy as np
import matplotlib.pyplot as plt


#ene_loss = np.loadtxt("./vibrate_00030.dat",delimiter=',')

bol=1.380649e-23
ee=1.602176634e-19
planck=6.62607e-34 #[Js]
cc=2.99792458e8 
omega_n2=2358.6e2*cc #[rad/s]


file= open("work201016/170_160/output_main/00200.dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
main = np.genfromtxt("temp.dat")

file= open("work201016/170_160/output_density/00200.dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
density = np.genfromtxt("temp.dat")


file= open("work201016/170_160/output_loss/00200.dat","r")
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


tv=np.zeros(302)

ng=main[:,11]

for j in range(1,20): #M2(v=1)-N2(v=20)
        tv=tv+0.291*j*density[:,j+2]/ng

tv=tv*11609
plt.plot(main[:,0],tv,label="Tv", color='black')

#plt.plot(ene_loss[:,0],main[:,24],label="vibrate")

ax = plt.gca()
#ax.set_yscale('log')
plt.legend(loc='best')

plt.show()



