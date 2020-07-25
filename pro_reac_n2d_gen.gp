load "template.gp"
set xrange [1.7:2.2]
set logscale y

plot file.".dat"  u ($1/100):(($952+$979+$1005+$1032+$1060+$1089+$1119+$1150+$1182+$1214+$1246+$1276+$1306+$1335+$1363+1390+$1416+$1441+$1465+$1488+$1510)*1E-6) w l lw 2 lc rgb"red" title"R9 E+N2(v=0-20)=>E+N+N(2D)" 
replot file.".dat"  u ($1/100):($1524*1E-6) w l lw 2 dt (10,5) lc rgb"orange" title"R23 E+N=>E+N(2D)" 

replot file.".dat"  u ($1/100):($3*1E-6) w l lw 2 lc rgb"dark-red" title"R42 E+N2^+=>N+N(2D)"  
replot file.".dat"  u ($1/100):($12*1E-6) w l lw 2  dt (10,5) lc rgb"brown" title"R51 E+NO^+=>O+N(2D)"   
replot file.".dat"  u ($1/100):($1547*1E-6) w l lw 2 lc rgb"purple" title"R96 N2(c4)=>N+N" 

replot file.".dat"  u ($1/100):($665*1E-6) w l lw 2 dt (10,5) lc rgb"magenta" title"R101 N2(A3)+O=>NO+N(2D)"       
replot file.".dat"  u ($1/100):($679*1E-6) w l lw 2 lc rgb"green" title"R115 N2(B3)+O=>NO+N(2D)"      
replot file.".dat"  u ($1/100):($682*1E-6) w l lw 2 dt (10,5) lc rgb"gold" title"R118 N2(C3)+O=>NO+N(2D)"   
replot file.".dat"  u ($1/100):($685*1E-6) w l lw 2  lc rgb"cyan" title"R121 N2(A1)+O=>NO+N(2D)"  
replot file.".dat"  u ($1/100):($694*1E-6) w l lw 2 lc rgb"coral" title"R129 N(2P)+N=>N(2D)+N"  
replot file.".dat"  u ($1/100):($695*1E-6) w l lw 2  lc rgb"magenta" title"R130 N(2P)+O=>N(2D)+O"
replot file.".dat"  u ($1/100):($696*1E-6) w l lw 2 dt (10,5) lc rgb"red" title"R131 N(2P)+N2=>N(2D)+N2"



 
