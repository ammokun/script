load "template.gp"
set xrange [0:3]
set logscale y
set yr [1E10:*]
set xtics 0.1

# replot file.".dat"  u ($1/100):($45*1E-6) w l lw 2 dt (10,5) lc rgb"brown" title"N(2D)+O=>NO^++E" 


#plot file.".dat"  u ($1/100):($953*1E-6) w l lw 2  lc rgb"red" title"E+N_2=>E+E+N_2^+"  
#replot file.".dat"  u ($1/100):($980*1E-6) w l lw 2 lc rgb"orange" title"E+N_2(v1)=>E+E+N_2^+" 
#replot file.".dat"  u ($1/100):($1540*1E-6) w l lw 2 dt (10,5) lc rgb"magenta" title"E+N2(A3)=>E+E+N2^+"       
#replot file.".dat"  u ($1/100):($1544*1E-6) w l lw 2 lc rgb"green"  title"E+N2(A1)=>E+E+N2^+"     
#replot file.".dat"  u ($1/100):($1546*1E-6) w l lw 2  lc rgb"purple" title"E+N_2*=>E+E+N_2^+"  
#replot file.".dat"  u ($1/100):($1545*1E-6) w l lw 2 lc rgb"cyan" title"E+NO=>E+E+NO^+"   
#replot file.".dat"  u ($1/100):($1520*1E-6) w l lw 2 lc rgb"blue" title"E+O_2=>E+E+O_2^+"
#replot file.".dat"  u ($1/100):($1549*1E-6) w l lw 2 lc rgb"black" title"Photoionization" 
#replot file.".dat"  u ($1/100):($1551*1E-6) w l lw 2 dt (10,5) lc rgb"black" title"Photoexcitation"     

plot file.".dat"  u ($1/100):($40*1E-6) w l lw 2 dt (10,5) lc rgb"red" title"N2(A1)+N2(A3)=>N4^++E" 
replot file.".dat"  u ($1/100):($41*1E-6) w l lw 2 lc rgb"orange" title"N2(A1)+N2(A1)=>N4^++E" 
replot file.".dat"  u ($1/100):($42*1E-6) w l lw 2 lc rgb"magenta" title"N(2P)+N(2D)=>N2^++E" 
replot file.".dat"  u ($1/100):($43*1E-6) w l lw 2 lc rgb"green" title"N(2P)+N(2P)=>N2^++E" 
replot file.".dat"  u ($1/100):($44*1E-6) w l lw 2 lc rgb"purple" title"N(2P)+O=>NO^++E" 
replot file.".dat"  u ($1/100):($45*1E-6) w l lw 2 lc rgb"cyan" title"N(2D)+O=>NO^++E" 
replot file.".dat"  u ($1/100):($46*1E-6) w l lw 2 lc rgb"blue" title"N+O+2.760D0_EV=>NO^++E" 
replot file.".dat"  u ($1/100):($47*1E-6) w l lw 2 lc rgb"red" title"N+N+5.821D0_EV=>N2^++E" 
replot file.".dat"  u ($1/100):($48*1E-6) w l lw 2 lc rgb"blue" title"O+O+6.955D0_EV=>O2^++E" 

