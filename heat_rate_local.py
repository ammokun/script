import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

bol=1.380649e-23
ee=1.602176634e-19


x=105

data_num="00400"
directory="../work210409/170_020_rad"

file= open(directory+"/output_reaction/"+data_num+".dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
r_rate = np.genfromtxt("temp.dat")

file= open(directory+"/output_main/"+data_num+".dat","r")
string = file.read()
file.close()
string = string.replace(","," ")
file=open("temp.dat","w")
file.write(string)
file.close()
main = np.genfromtxt("temp.dat")


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
heat=[[0 for i in range(2)] for j in range(1555)]

r_rate = np.nan_to_num(r_rate)

coefficient = coefficient*bol/ee
#coefficient = np.round(coefficient,2)
#print(r_rate[:,2])

joule=0
for j in range(0,1555):
        heat[j][0] = coefficient[j-1,1] * r_rate[x,j]*ee
        heat[j][1] = reaction_name[j]
        joule=joule+heat[j][0]
#print(heat[1][:])

exothermic_sorted_heat=sorted(heat, key=lambda x:x[0], reverse=True)
endothermic_sorted_heat=sorted(heat, key=lambda x:x[0])
#print(exothermic_sorted_heat[1][:])
#print(endothermic_sorted_heat[1][:])



joule_main=main[:,17]
inelastic = np.zeros(302)
for j in range(0,300):
        inelastic[j]=main[j,48]*main[j,2]*ee
joule_main=joule_main

joule=joule
exothermic_joule=0
endothermic_joule=0
vt_heat=np.zeros(302)
tv_heat=np.zeros(302)
fastgas_heat=np.zeros(302)
dissociate_heat=np.zeros(302)
recom_heat=np.zeros(302)
three_body_recombination=np.zeros(302)
total_exothermic=np.zeros(302)
total_endothermic=np.zeros(302)

for j in range(0,1555):
        if exothermic_sorted_heat[j][0]>0:
                exothermic_joule=exothermic_joule+exothermic_sorted_heat[j][0]
        if endothermic_sorted_heat[j][0]<0:
                endothermic_joule=endothermic_joule+endothermic_sorted_heat[j][0]

for j in range(0,1555):
        if heat[j][0]>0:
                #Total Exothermic heat rate 
                for i in range(0,300):
                        total_exothermic[i]=total_exothermic[i]+coefficient[j-1,1] * r_rate[i,j]*ee
                
                #VT heat rate
                if ("N2+0.290D0_EV" in heat[j][1]) \
                or ("N+0.290D0_EV" in heat[j][1]) \
                or ("O+0.290D0_EV" in heat[j][1]):
                        for i in range(0,300):
                                vt_heat[i]=vt_heat[i]+coefficient[j-1,1] * r_rate[i,j]*ee
                if ("N2(A3)+O2=>N2+O+O+1.10D0_EV" in heat[j][1]) \
                or ("N2(A3)+N2(A3)=>N2(V3)+N2(B3)+4.00D0_EV" in heat[j][1]) \
                or ("N2(A3)+N2(A3)=>N2+N2(C3)+0.40D0_EV" in heat[j][1]) \
                or ("N2(B3)+O2=>N2+O+O+2.23D0_EV" in heat[j][1]) \
                or ("N2(B3)+O=>NO+N(2D)+1.74D0_EV" in heat[j][1]) \
                or ("N2(C3)+O2=>N2+O+O(1S)+4.57D0_EV" in heat[j][1]) \
                or ("N2(C3)+O=>NO+N(2D)+5.42D0_EV" in heat[j][1]) \
                or ("N2(A`1)+O2=>N2+O+O+3.43D0_EV" in heat[j][1]) \
                or ("N2(A`1)+O=>NO+N(2D)+2.79D0_EV" in heat[j][1]) \
                or ("N(2D)+O2=>NO+O(1D)+1.76D0_EV" in heat[j][1]) \
                or ("N(2D)+O2=>NO+O+3.73D0_EV" in heat[j][1]) \
                or ("N(2D)+O=>N+O+2.35D0_EV" in heat[j][1]) \
                or ("N(2D)+NO=>N2+O+4.23D0_EV" in heat[j][1]) \
                or ("N(2D)+NO=>N2+O(1D)+2.263D0_EV" in heat[j][1]) \
                or ("N(2D)+N2=>N+N2+2.385_EV" in heat[j][1]) \
                or ("N(2P)+N=>N(2D)+N+1.19D0_EV" in heat[j][1]) \
                or ("N(2P)+N2=>N(2D)+N2+1.19D0_EV" in heat[j][1]) \
                or ("N(2P)+NO=>N2+O+5.42D0_EV" in heat[j][1]) \
                or ("N(2P)+NO=>N2+O(1D)+3.45D0_EV" in heat[j][1]) \
                or ("N(2P)+O2=>NO+O+4.92D0_EV" in heat[j][1]) \
                or ("N(2P)+O2=>NO+O(1D)+2.95D0_EV" in heat[j][1]) \
                or ("O2(B1)+O=>O2(A1)+O+0.65D0_EV" in heat[j][1]) \
                or ("O(1D)+O=>O+O+1.97D0_EV" in heat[j][1]) \
                or ("O(1D)+NO=>O+NO+1.97D0_EV" in heat[j][1]) \
                or ("O(1D)+O2=>O+O2+1.97D0_EV" in heat[j][1]) \
                or ("O(1D)+N2=>O+N2(V2)+1.38D0_EV" in heat[j][1]) \
                or ("O(1S)+O=>O(1D)+O+2.22D0_EV" in heat[j][1]) \
                or ("O(1S)+NO=>O+NO+4.19D0_EV" in heat[j][1]) \
                or ("O(1S)+NO=>O(1D)+NO+2.22D0_EV" in heat[j][1]):
                        for i in range(0,300):
                                fastgas_heat[i]=fastgas_heat[i]+coefficient[j-1,1] * r_rate[i,j]*ee
                #Recombination heat
                if 0<=j<=16:
                        for i in range(0,300):
                                recom_heat[i]=recom_heat[i]+coefficient[j-1,1] * r_rate[i,j]*ee
                if  846<=j<=865:
                        for i in range(0,300):
                                three_body_recombination[i]=three_body_recombination[i]+coefficient[j-1,1] * r_rate[i,j]*ee
        
        if heat[j][0]<0:
                for i in range(0,300):
                        total_endothermic[i]=total_endothermic[i]+coefficient[j-1,1] * r_rate[i,j]*ee
                if ("N2+0.290D0_EV" in heat[j][1]) \
                or ("N+0.290D0_EV" in heat[j][1]) \
                or ("N2+N2+0.290D0_EV=>N2(V1)+N2" in heat[j][1]) \
                or ("O+0.290D0_EV" in heat[j][1]):
                        for i in range(0,300):
                                tv_heat[i]=tv_heat[i]+coefficient[j-1,1] * r_rate[i,j]*ee
                if ("=>N+N+ANY_NEUTRAL" in heat[j][1]) \
                or ("=>N+N+N" in heat[j][1]) \
                or ("=>N+N+O" in heat[j][1]) \
                or ("=>O+O+ANY_NEUTRAL" in heat[j][1]) \
                or ("=>O+O+O2" in heat[j][1]) \
                or ("V=>O+O+O " in heat[j][1]):
                        for i in range(0,300):
                                dissociate_heat[i]=dissociate_heat[i]+coefficient[j-1,1] * r_rate[i,j]*ee

total_exothermic=total_exothermic+inelastic

print("exothermic=%e, VT ratio=%f, fast gas ratio=%f" %(exothermic_joule, vt_heat[x]/exothermic_joule, fastgas_heat[x]/exothermic_joule))
for j in range(0,5):
        print("%e, %s" %(exothermic_sorted_heat[j][0],exothermic_sorted_heat[j][1]), sep="\n")
print("endothermic=%e, TV ratio=%f" %(endothermic_joule,tv_heat[x]/endothermic_joule))
for j in range(0,5):
        print("%e, %s" %(endothermic_sorted_heat[j][0],endothermic_sorted_heat[j][1]), sep="\n")
print("joule main=%e loss_elas=%e joule=%e exo+end=%e" %(joule_main[x],inelastic[x], joule, endothermic_joule+exothermic_joule))
"""
print("exothermic=%e, VT ratio=%f, fast gas ratio=%f" %(exothermic_joule, vt_heat[x]/exothermic_joule, fastgas_heat[x]/exothermic_joule))
for j in range(0,5):
        print("%f, %s" %(exothermic_sorted_heat[j][0]/exothermic_joule,exothermic_sorted_heat[j][1]), sep="\n")
print("endothermic=%e, TV ratio=%f" %(endothermic_joule,tv_heat[x]/endothermic_joule))
for j in range(0,5):
        print("%f, %s" %(endothermic_sorted_heat[j][0]/endothermic_joule,endothermic_sorted_heat[j][1]), sep="\n")
print("joule main=%e loss_elas=%e joule=%e exo+end=%e" %(joule_main[x],inelastic[x], joule, endothermic_joule+exothermic_joule))
"""

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

x=np.linspace(0,3.02,302)

fig1=plt.figure(figsize=(4,3))


ax11=fig1.add_subplot()




ax12=ax11.twinx()


ax12.plot(x,total_exothermic,color="Black",label="Exothemic rate")
ax11.stackplot(x,inelastic/total_exothermic,\
        vt_heat/total_exothermic,\
        fastgas_heat/total_exothermic,\
        three_body_recombination/total_exothermic,\
        1-(inelastic/total_exothermic+vt_heat/total_exothermic+fastgas_heat/total_exothermic+three_body_recombination/total_exothermic),\
        colors=["royalblue","tan","teal","lightpink","brown"],\
        labels=["Elastic","VT","Fast gas heating","Three Body Recombination","Others"])
ax12.set_yscale('log')
#ax11.legend(bbox_to_anchor=(1.25,0.85),loc='upper left')
fig1.legend(bbox_to_anchor=(1.1,1),loc='upper left')
#fig1.legend(bbox_to_anchor=(0.5,-0.1),loc="upper center")
ax11.set_xlim([0,3])
ax12.set_ylim([1E8,1E14])
ax11.set_ylim([0,1])
ax12.set_ylabel("Exothermic rate [$\mathrm{J/m^3/s}$]")
ax11.set_ylabel("Ratio")
ax11.set_xlabel(r"$\it{x/\lambda}$")

#plt.tight_layout()
plt.savefig(directory+"/"+data_num+"exothermic.eps", bbox_inches='tight',pad_inches=0.05)

fig2=plt.figure(figsize=(4,3))
ax21=fig2.add_subplot()
ax22=ax21.twinx()
ax22.plot(x,-total_endothermic,color="Black", label="Endothrmic rate")
ax21.stackplot(x,tv_heat/total_endothermic,\
        dissociate_heat/total_endothermic,\
        1-(tv_heat/total_endothermic+dissociate_heat/total_endothermic),\
        colors=["lightgray","mediumpurple","brown"],\
         labels=["TV","Dissociation","Others"])
ax22.set_yscale('log')
#fig2.legend(loc="upper center",bbox_to_anchor=(0.5,-0.1),ncol=3)
fig2.legend(bbox_to_anchor=(1.1,1),loc='upper left')
ax21.set_xlim([0,3])
ax22.set_ylim([1E8,1E14])
ax21.set_ylim([0,1])
ax21.set_xlabel(r'$\it{x / \lambda}$')
ax22.set_ylabel("Endothermic rate [$\mathrm{J/m^3/s}$]")
ax21.set_ylabel("Ratio")
ax11.set_xlabel(r"$\it{x/\lambda}$")

#plt.tight_layout()
plt.savefig(directory+"/"+data_num+"endothermic.eps", bbox_inches='tight',pad_inches=0.05)
plt.show()

"""
ax1=fig.add_subplot(2,1,1)
ax2=fig.add_subplot(2,1,2)
ax1.plot(x,total_exothermic, label="Exothemic")
ax1.plot(x,inelastic, label="Elastic")
ax1.plot(x,vt_heat, label="VT")
ax1.plot(x,fastgas_heat, label="Fast gas heating")

ax2.plot(x,-total_endothermic, label="Endothrmic")
ax2.plot(x,-tv_heat, label="TV")
ax2.plot(x,-dissociate_heat, label="Dissociation")

ax1.set_yscale('log')
ax1.legend(bbox_to_anchor=(1.05,1),loc='upper left')
ax1.set_xlim([0,3])
ax1.set_ylim([1E2,1E14])
ax1.set_ylabel("Exothermic rate [$\mathrm{J/m^3/s}$]")
ax2.set_yscale('log')
ax2.legend(bbox_to_anchor=(1.05,1),loc='upper left')
ax2.set_xlim([0,3])
ax2.set_ylim([1E2,1E14])
ax2.set_xlabel(r'$\it{x / \lambda}$')
ax2.set_ylabel("Endothermic rate [$\mathrm{J/m^3/s}$]")
plt.tight_layout()
plt.show()
"""