#gnuplot -persist  -e "file='00002'" pro_tetg.gp
 
set yrange [1E10:*]
set xrange [1.5:2]
set size square
set logscale y
set key outside

plot file.".dat" u ($1/100):(1E-6*($956+$982+$1008+$1035+$1063+$1092+$1122+$1153+$1185+$1217+$1249+$1279+$1309+$1338+$1366+$1393+$1419+$1444+$1468+$1491+$1513)) w l lw 2 lc rgb"red" title "R9 E+N_2(v)=>E+E+N_2^+"
#replot file.".dat" u ($1/100):(1E-6*($956)) w l lw 2 lc rgb"red" title "R9 E+N_2=>E+E+N_2^+"

replot file.".dat" u ($1/100):($1522*1E-6)  w l lw 2 lc rgb"blue" title "R18 E+O_2=>E+E+O_2^+"
replot file.".dat" u ($1/100):($1525*1E-6)   w l dt(10,5) lw 2 lc rgb"magenta" title "R21 E+O=>E+E+O^+" 

replot file.".dat" u ($1/100):($44*1E-6)  w l dt(10,5) lw 2 lc rgb"orange" title "R170 N(^2P)+O=>E+E+NO^+" 



#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 

replot

