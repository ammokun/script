import numpy as np
import matplotlib.pyplot as plt


#ene_loss = np.loadtxt("./vibrate_00030.dat",delimiter=',')

bol=1.380649e-23
ee=1.602176634e-19
planck=6.62607e-34 #[Js]
cc=2.99792458e8 
omega_n2=2358.6e2*cc #[rad/s]


file= open("./1dcode_200915/output_main/00020.dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
main = np.genfromtxt("temp.dat")

file= open("./1dcode_200915/output_density/00020.dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
density = np.genfromtxt("temp.dat")


file= open("./1dcode_200915/output_loss/00020.dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
ene_loss = np.genfromtxt("temp.dat")


file= open("./1dcode_200915/output_vib/00020.dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
vib = np.genfromtxt("temp.dat")



#print(ene_loss[:,1])
#print(density[:,0])

#for i in range(1,20):
#    ene_loss[:,i] = (ene_loss[:,i]*density[:,i+2])

vibrate=np.zeros(302)
vibrate0=np.zeros(302)
vibrate1=np.zeros(302)
vibrate2=np.zeros(302)
vibrate3=np.zeros(302)
vibrate4=np.zeros(302)
vibrate5=np.zeros(302)
vibrate6=np.zeros(302)
vibrate7=np.zeros(302)
vibrate8=np.zeros(302)
vibrate9=np.zeros(302)
vibrate10=np.zeros(302)
vibrate11=np.zeros(302)
vibrate12=np.zeros(302)
vibrate13=np.zeros(302)
vibrate14=np.zeros(302)
vibrate15=np.zeros(302)
vibrate16=np.zeros(302)
vibrate17=np.zeros(302)
vibrate18=np.zeros(302)
vibrate19=np.zeros(302)
vibrate20=np.zeros(302)


#print(vibrate)
#for i in range(1,20):
#    vibrate = ene_loss[:,i]

#rate eV/s
"""
for j in range(3,11):
        vibrate0 = vibrate0+ene_loss[:,j]*density[:,2]
for j in range(31,40):
        vibrate1 = vibrate1+ene_loss[:,j]*density[:,3]
for j in range(59,68):
        vibrate2 = vibrate2+ene_loss[:,j]*density[:,4]
for j in range(87,97):
        vibrate3 =vibrate3+ene_loss[:,j]*density[:,5]
for j in range(116,127):
        vibrate4 =vibrate4+ene_loss[:,j]*density[:,6]
for j in range(146,158):
        vibrate5 =vibrate5+ene_loss[:,j]*density[:,7]
for j in range(177,190):
        vibrate6 =vibrate6+ene_loss[:,j]*density[:,8]
for j in range(209,223):
        vibrate7 =vibrate7+ene_loss[:,j]*density[:,9]
for j in range(242,257):
        vibrate8 =vibrate8+ene_loss[:,j]*density[:,10]
for j in range(276,291):
        vibrate9 =vibrate9+ene_loss[:,j]*density[:,11]
for j in range(310,325):
        vibrate10 =vibrate10+ene_loss[:,j]*density[:,12]
for j in range(344,359):
        vibrate11 =vibrate11+ene_loss[:,j]*density[:,13]
for j in range(376,391):
        vibrate12 =vibrate12+ene_loss[:,j]*density[:,14]
for j in range(408,422):
        vibrate13 =vibrate13+ene_loss[:,j]*density[:,15]
for j in range(439,452):
        vibrate14 =vibrate14+ene_loss[:,j]*density[:,16]
for j in range(469,481):
        vibrate15 =vibrate15+ene_loss[:,j]*density[:,17]
for j in range(498,509):
        vibrate16 =vibrate16+ene_loss[:,j]*density[:,18]
for j in range(526,536):
        vibrate17 =vibrate17+ene_loss[:,j]*density[:,19]
for j in range(553,562):
        vibrate18 =vibrate18+ene_loss[:,j]*density[:,20]
for j in range(579,587):
        vibrate19 =vibrate19+ene_loss[:,j]*density[:,21]
for j in range(604,611):
        vibrate20 =vibrate20+ene_loss[:,j]*density[:,23] 
"""
#energy source J/m^3s 

for j in range(3,11):
        vibrate0 = vibrate0+ene_loss[:,j]*density[:,2]*main[:,3]*ee
for j in range(31,40):
        vibrate1 = vibrate1+ene_loss[:,j]*density[:,3]*main[:,3]*ee
for j in range(59,68):
        vibrate2 = vibrate2+ene_loss[:,j]*density[:,4]*main[:,3]*ee
for j in range(87,97):
        vibrate3 =vibrate3+ene_loss[:,j]*density[:,5]*main[:,3]*ee
for j in range(116,127):
        vibrate4 =vibrate4+ene_loss[:,j]*density[:,6]*main[:,3]*ee
for j in range(146,158):
        vibrate5 =vibrate5+ene_loss[:,j]*density[:,7]*main[:,3]*ee
for j in range(177,190):
        vibrate6 =vibrate6+ene_loss[:,j]*density[:,8]*main[:,3]*ee
for j in range(209,223):
        vibrate7 =vibrate7+ene_loss[:,j]*density[:,9]*main[:,3]*ee
for j in range(242,257):
        vibrate8 =vibrate8+ene_loss[:,j]*density[:,10]*main[:,3]*ee
for j in range(276,291):
        vibrate9 =vibrate9+ene_loss[:,j]*density[:,11]*main[:,3]*ee
for j in range(310,325):
        vibrate10 =vibrate10+ene_loss[:,j]*density[:,12]*main[:,3]*ee
for j in range(344,359):
        vibrate11 =vibrate11+ene_loss[:,j]*density[:,13]*main[:,3]*ee
for j in range(376,391):
        vibrate12 =vibrate12+ene_loss[:,j]*density[:,14]*main[:,3]*ee
for j in range(408,422):
        vibrate13 =vibrate13+ene_loss[:,j]*density[:,15]*main[:,3]*ee
for j in range(439,452):
        vibrate14 =vibrate14+ene_loss[:,j]*density[:,16]*main[:,3]*ee
for j in range(469,481):
        vibrate15 =vibrate15+ene_loss[:,j]*density[:,17]*main[:,3]*ee
for j in range(498,509):
        vibrate16 =vibrate16+ene_loss[:,j]*density[:,18]*main[:,3]*ee
for j in range(526,536):
        vibrate17 =vibrate17+ene_loss[:,j]*density[:,19]*main[:,3]*ee
for j in range(553,562):
        vibrate18 =vibrate18+ene_loss[:,j]*density[:,20]*main[:,3]*ee
for j in range(579,587):
        vibrate19 =vibrate19+ene_loss[:,j]*density[:,21]*main[:,3]*ee
for j in range(604,611):
        vibrate20 =vibrate20+ene_loss[:,j]*density[:,23]*main[:,3]*ee


"""
for j in range(3,11):
        vibrate0 = vibrate0+ene_loss[:,j]
for j in range(31,40):
        vibrate1 = vibrate1+ene_loss[:,j]
for j in range(59,68):
        vibrate2 = vibrate2+ene_loss[:,j]
for j in range(87,97):
        vibrate3 =vibrate3+ene_loss[:,j]
for j in range(116,127):
        vibrate4 =vibrate4+ene_loss[:,j]
for j in range(146,158):
        vibrate5 =vibrate5+ene_loss[:,j]
for j in range(177,190):
        vibrate6 =vibrate6+ene_loss[:,j]
for j in range(209,223):
        vibrate7 =vibrate7+ene_loss[:,j]
for j in range(242,257):
        vibrate8 =vibrate8+ene_loss[:,j]
for j in range(276,291):
        vibrate9 =vibrate9+ene_loss[:,j]
for j in range(310,325):
        vibrate10 =vibrate10+ene_loss[:,j]
for j in range(344,359):
        vibrate11 =vibrate11+ene_loss[:,j]
for j in range(376,391):
        vibrate12 =vibrate12+ene_loss[:,j]
for j in range(408,422):
        vibrate13 =vibrate13+ene_loss[:,j]
for j in range(439,452):
        vibrate14 =vibrate14+ene_loss[:,j]
for j in range(469,481):
        vibrate15 =vibrate15+ene_loss[:,j]
for j in range(498,509):
        vibrate16 =vibrate16+ene_loss[:,j]
for j in range(526,536):
        vibrate17 =vibrate17+ene_loss[:,j]
for j in range(553,562):
        vibrate18 =vibrate18+ene_loss[:,j]
for j in range(579,587):
        vibrate19 =vibrate19+ene_loss[:,j]
for j in range(604,611):
        vibrate20 =vibrate20+ene_loss[:,j] 
#print(vibrate)
"""


plt.plot(ene_loss[:,0],vibrate0,label="N2(v0)")

plt.plot(ene_loss[:,0],vibrate1,label="N2(v1)")
plt.plot(ene_loss[:,0],vibrate2,label="N2(v2)")
plt.plot(ene_loss[:,0],vibrate3,label="N2(v3)")
plt.plot(ene_loss[:,0],vibrate4,label="N2(v4)")
plt.plot(ene_loss[:,0],vibrate5,label="N2(v5)")
plt.plot(ene_loss[:,0],vibrate6,label="N2(v6)")
plt.plot(ene_loss[:,0],vibrate7,label="N2(v7)")
plt.plot(ene_loss[:,0],vibrate8,label="N2(v8)")
plt.plot(ene_loss[:,0],vibrate9,label="N2(v9)")


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


vibrate=vibrate0+vibrate1+vibrate2+vibrate3+vibrate4+vibrate5+vibrate6+vibrate6+vibrate7+vibrate8+vibrate9+vibrate10+vibrate11+vibrate12+vibrate13+vibrate14+vibrate15+vibrate16+vibrate17+vibrate18+vibrate19+vibrate20

plt.plot(ene_loss[:,0],vibrate,label="vibrate", color='black')

#plt.plot(ene_loss[:,0],main[:,24],label="vibrate")

ax = plt.gca()
#ax.set_yscale('log')
plt.legend(loc='best')

plt.show()



