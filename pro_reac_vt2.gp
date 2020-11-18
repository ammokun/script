load "template.gp"
set xrange [1.8:2.3]
set logscale y
set yrange [1E10:*]
# replot file.".dat"  u ($1/100):($45*1E-6) w l lw 2 dt (10,5) lc rgb"brown" title"N(2D)+O=>NO^++E" 


plot file.".dat"  u ($1/100):($135*1E-6) w l lw 2  lc rgb"red" title"N2(V1)+N2=>N2+N2"  
replot file.".dat"  u ($1/100):($155*1E-6) w l lw 2 lc rgb"blue" title"N2+N2=>N2(V1)+N2" 
replot file.".dat"  u ($1/100):($175*1E-6) w l lw 2 dt (10,5) lc rgb"red" title"N2(V1)+N=>N2(V1)+N"       
replot file.".dat"  u ($1/100):($195*1E-6) w l lw 2 dt (10,5) lc rgb"blue"  title"N2+N=>N2(V1)+N2"   
replot file.".dat"  u ($1/100):($215*1E-6) w l lw 2 dt (10,10,3,10) lc rgb"red" title"N2(V1)+O=>N2+O"  
replot file.".dat"  u ($1/100):($140*1E-6) w l lw 2 dt (10,10,3,10) lc rgb"blue" title"N2+O=>N2(V1)+O"     