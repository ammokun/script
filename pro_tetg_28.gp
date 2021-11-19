#gnuplot -persist  -e "file='00002'" pro_tetg.gp
 
load "template.gp"

set yrange [0:3E4]
set xrange [0:3]
set size square
set y2tics
set y2range [0:*]
set ytics nomirror
set key outside

plot file.".dat" u ($1/607):($14) axis x1y1 w l lw 2 lc rgb"blue" title "T_e" #*1E4 [K]
replot file.".dat" u ($1/607):($15) axis x1y1 w l lw 2 lc rgb"purple" title "T_v" #*1E4 [K]
replot file.".dat" u ($1/607):($16) axis x1y1 w l lw 2 lc rgb"red" title "T_g" #*1E4 [K]
replot file.".dat" u ($1/607):($9) axis x1y2 w l dt(10,5) lw 2 lc rgb"magenta" title "E/N" #Td

#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 

replot

