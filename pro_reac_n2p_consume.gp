load "template.gp"
set xrange [1.7:2.2]
set logscale y

plot file.".dat"  u ($1/100):($3*1E-6) w l lw 2 dt (10,5) lc rgb"orange" title"R43 E+N2^+=>N+N(2P)" 

replot file.".dat"  u ($1/100):($42*1E-6) w l lw 2 lc rgb"dark-red" title"R171 N(2P)+N(2D)=>N2^++E"  
replot file.".dat"  u ($1/100):($43*1E-6) w l lw 2  dt (10,5) lc rgb"brown" title"R172 N(2P)+N(2P)=>N2^++E"   
replot file.".dat"  u ($1/100):($44*1E-6) w lp lw 2 lc rgb"blue" title"R173 N(2P)+O=>NO^++E" 

replot file.".dat"  u ($1/100):(($654+$655+$656+$657+$658+$659+$660+$661+$662+$663+$664)*1E-6) w l lw 2 dt (10,5) lc rgb"magenta" title"R86 N(2P)+N2(v=10-20)=>N+N2(A3)"       
      
replot file.".dat"  u ($1/100):($694*1E-6) w l lw 2 dt (10,5) lc rgb"blue" title"R129 N(2P)+N=>N(2D)+N"   
replot file.".dat"  u ($1/100):($695*1E-6) w l lw 2  lc rgb"cyan" title"R130 N(2P)+O=>N(2D)+O"  
replot file.".dat"  u ($1/100):($696*1E-6) w l lw 2 lc rgb"coral" title"R131 N(2P)+N2=>N(2D)+N2"  
replot file.".dat"  u ($1/100):($697*1E-6) w l lw 2  lc rgb"magenta" title"R132 N(2P)+NO=>N2+O"
replot file.".dat"  u ($1/100):($698*1E-6) w l lw 2 dt (10,5) lc rgb"red" title"R133 N(2P)+NO=>N2+O(1D)"
replot file.".dat"  u ($1/100):($699*1E-6) w lp lw 2  lc rgb"dark-red" title"R134 N(2P)+O2=>NO+O"
replot file.".dat"  u ($1/100):($700*1E-6) w l lw 2 lc rgb"black" title"R135 N(2P)+O2=>NO+O(1D)"



 
