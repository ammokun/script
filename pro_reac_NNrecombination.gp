load "template.gp"
set xrange [2.2:2.3]
set logscale y
set yrange [1E10:1E24]
# replot file.".dat"  u ($1/100):($45*1E-6) w l lw 2 dt (10,5) lc rgb"brown" title"N(2D)+O=>NO^++E" 


plot file.".dat"  u ($1/100):(847*1E-6) w l lw 2  dt (10,5) lc rgb"orange" title"N+N+N2=>N2+N2
replot file.".dat"  u ($1/100):($848*1E-6) w l lw 2 lc rgb"blue" title"N+N+O2=>N2+O2" 
replot file.".dat"  u ($1/100):($849*1E-6) w l lw 2 dt (10,5) lc rgb"magenta" title"N+N+NO=>N2+NO"       
replot file.".dat"  u ($1/100):($850*1E-6) w l lw 2 lc rgb"green"  title"N+N+N=>N+N"   
replot file.".dat"  u ($1/100):($851*1E-6) w l lw 2 dt (10,5) lc rgb"gold" title"N+N+O=>N2+O"  