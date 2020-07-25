load "template.gp"
set xrange [1.7:2.2]
set logscale y

# replot file.".dat"  u ($1/100):($45*1E-6) w l lw 2 dt (10,5) lc rgb"brown" title"N(2D)+O=>NO^++E" 


plot file.".dat"  u ($1/100):($1527*1E-6) w l lw 2  dt (10,5) lc rgb"orange" title"R26 E+N(2D)=>E+N(2P)"  
replot file.".dat"  u ($1/100):($1528*1E-6) w l lw 2 lc rgb"blue" title"R27 E+N(2D)=>E+E+N^+" 
replot file.".dat"  u ($1/100):($688*1E-6) w l lw 2 dt (10,5) lc rgb"magenta" title"R123 N(2D)+O2=>NO+O(1D)"       
replot file.".dat"  u ($1/100):($689*1E-6) w l lw 2 lc rgb"green"  title"R124 N(2D)+O2=>NO+O"     
replot file.".dat"  u ($1/100):($690*1E-6) w l lw 2 dt (10,5) lc rgb"gold" title"R125 N(2D)+O=>N+O"  
replot file.".dat"  u ($1/100):($691*1E-6) w l lw 2 lc rgb"cyan" title"R126 N(2D)+NO=>N2+O"   
replot file.".dat"  u ($1/100):($692*1E-6) w l lw 2 lc rgb"coral" title"R127 N(2D)+NO=>N2+O(1D)"   
replot file.".dat"  u ($1/100):($693*1E-6) w l lw 2 lc rgb"magenta" title"R128 N(2D)+N2=>N+N2" 
replot file.".dat"  u ($1/100):($42*1E-6) w l lw 2 lc rgb"dark-red" title"R171 N(2P)+N(2D)=>N2^++E"  
replot file.".dat"  u ($1/100):($880*1E-6) w l lw 2 dt (10,5) lc rgb"red" title"R283 O^++N(2D)=>N^++O" 