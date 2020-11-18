load "template.gp"
set xrange [1.8:2.3]
set logscale y
set yrange [1E10:*]
# replot file.".dat"  u ($1/100):($45*1E-6) w l lw 2 dt (10,5) lc rgb"brown" title"N(2D)+O=>NO^++E" 


plot file.".dat"  u ($1/100):($135*1E-6) w l lw 2  dt (10,5) lc rgb"orange" title"2(V1)+N2=>N2+N2"  
replot file.".dat"  u ($1/100):($136*1E-6) w l lw 2 lc rgb"blue" title"N2(V2)+N2=>N2(V1)+N2" 
replot file.".dat"  u ($1/100):($137*1E-6) w l lw 2 dt (10,5) lc rgb"magenta" title"N2(V3)+N2=>N2(V2)+N2"       
replot file.".dat"  u ($1/100):($138*1E-6) w l lw 2 lc rgb"green"  title"N2(V4)+N2=>N2(V3)+N2"   
replot file.".dat"  u ($1/100):($139*1E-6) w l lw 2 dt (10,5) lc rgb"gold" title"N2(V5)+N2=>N2(V4)+N2"  
replot file.".dat"  u ($1/100):($140*1E-6) w l lw 2 lc rgb"cyan" title"N2(V6)+N2=>N2(V5)+N2"   
replot file.".dat"  u ($1/100):($141*1E-6) w l lw 2 lc rgb"coral" title"N2(V7)+N2=>N2(V6)+N2"
replot file.".dat"  u ($1/100):($142*1E-6) w l lw 2 lc rgb"black" title"N2(V8)+N2=>N2(V7)+N2" 
replot file.".dat"  u ($1/100):($143*1E-6) w l lw 2 dt (10,5) lc rgb"black" title"N2(V9)+N2=>N2(V8)+N2"     