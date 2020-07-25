load "template.gp"
set xrange [1.8:2.3]
set logscale y

# replot file.".dat"  u ($1/100):($45*1E-6) w l lw 2 dt (10,5) lc rgb"brown" title"N(2D)+O=>NO^++E" 
     
replot file.".dat"  u ($1/100):($1546*1E-6) w l lw 2 dt (10,5) lc rgb"gold" title"E+N2(c4)=>E+E+N2^+"  
replot file.".dat"  u ($1/100):($1551*1E-6) w l lw 2 lc rgb"black" title"Photoexcitation"     