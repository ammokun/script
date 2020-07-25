load "template.gp"
set xrange [1.8:2.3]
set logscale y

# replot file.".dat"  u ($1/100):($45*1E-6) w l lw 2 dt (10,5) lc rgb"brown" title"N(2D)+O=>NO^++E" 


plot file.".dat"  u ($1/100):($953*1E-6) w l lw 2  dt (10,5) lc rgb"orange" title"E+N2=>E+E+N2^+"  
replot file.".dat"  u ($1/100):($980*1E-6) w l lw 2 lc rgb"blue" title"E+N2(V1)=>E+E+N2^+" 
replot file.".dat"  u ($1/100):($1540*1E-6) w l lw 2 dt (10,5) lc rgb"magenta" title"E+N2(A3)=>E+E+N2^+"       
replot file.".dat"  u ($1/100):($1544*1E-6) w l lw 2 lc rgb"green"  title"E+N2(A1)=>E+E+N2^+"     
replot file.".dat"  u ($1/100):($1546*1E-6) w l lw 2 dt (10,5) lc rgb"gold" title"E+N2(c4)=>E+E+N2^+"  
replot file.".dat"  u ($1/100):($1545*1E-6) w l lw 2 lc rgb"cyan" title"E+NO=>E+E+NO^+"   
replot file.".dat"  u ($1/100):($1520*1E-6) w l lw 2 lc rgb"coral" title"E+O2=>E+E+O2^+"
replot file.".dat"  u ($1/100):($1549*1E-6) w l lw 2 lc rgb"black" title"Photoionization" 
replot file.".dat"  u ($1/100):($1551*1E-6) w l lw 2 dt (10,5) lc rgb"black" title"Photoexcitation"     