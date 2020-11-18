load "template.gp"
set xrange [2.2:2.3]
set logscale y
set yrange [1E10:1E24]
# replot file.".dat"  u ($1/100):($45*1E-6) w l lw 2 dt (10,5) lc rgb"brown" title"N(2D)+O=>NO^++E" 


plot file.".dat"  u ($1/100):($766*1E-6) w l lw 2  dt (10,5) lc rgb"orange" title"N2(V1)+M=>N+N+M"  
replot file.".dat"  u ($1/100):($787*1E-6) w l lw 2 lc rgb"blue" title"N2(V1)+N=>N+N+N" 
replot file.".dat"  u ($1/100):($808*1E-6) w l lw 2 dt (10,5) lc rgb"magenta" title"N2(V1)+O=>N+N+O"       
replot file.".dat"  u ($1/100):($741*1E-6) w l lw 2 lc rgb"green"  title"O+N2(V1)=>N+NO"   
replot file.".dat"  u ($1/100):($977*1E-6) w l lw 2 dt (10,5) lc rgb"gold" title"E+N2(V1)=>E+N+N"  
replot file.".dat"  u ($1/100):($979*1E-6) w l lw 2 lc rgb"cyan" title"E+N2(V1)=>E+N+N(2D)"   
replot file.".dat"  u ($1/100):($175*1E-6) w l lw 2 lc rgb"coral" title"N2(V1)+N=>N2+N"