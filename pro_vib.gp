#gnuplot -persist  -e "file='00002'" pro_tetg.gp
 
load "template.gp"

set yrange [1:*]
set xrange [0:3]
set size square
set y2tics
set y2range [0:*]
set ytics nomirror
set key outside
set logscale y 

plot file.".dat" u ($1/100):($21) axis x1y1 w l lw 2 lc rgb"blue" title "ene_relax(i)"
replot file.".dat" u ($1/100):($18) axis x1y1 w l lw 2 lc rgb"purple" title "joule(i)" 
replot file.".dat" u ($1/100):($24) axis x1y1 w l lw 2 lc rgb"red" title "vib rate"
#replot file.".dat" u ($1/100):($50) axis x1y1 w l dt(10,5) lw 2 lc rgb"dark-green" title "loss inelastic"
replot file.".dat" u ($1/100):($20) axis x1y1 w l lw 2 lc rgb"orange" title "jouleZDP(i)"

replot file.".dat" u ($1/100):($15) axis x1y2 w l dt(10,5) lw 2 lc rgb"magenta" title "T_v" #Td

#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 

replot

