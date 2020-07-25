
#gnuplot -persist  -e "file='00002'" pro_tetg.gp
load "template.gp"
 
set yrange [1E10:*]
set xrange [1.5:3]
set size square
set y2tics
set xtics 0.5
set y2range [0:*]
set ytics nomirror
set logscale y
set key outside
set ylabel  "Energy [Jm^-^3/s]"
set y2label "E [Td]"
set y2label font "Arial, 25"
set lmargin 15

plot file.".dat" u ($1/100):(($49+$50)*$3*1.602176634E-19) axis x1y1 w l lw 2 lc rgb"purple" title "W electron collision" #
#plot file.".dat" u ($1/100):($44*0.9) axis x1y1 w l lw 2 lc rgb"red" title "W  photo electron" 
replot file.".dat" u ($1/100):($8*$8/$28/9.11E31*1.6021766E-19) axis x1y1 w l lw 2 lc rgb"blue" title "W  by field" 
#replot file.".dat" u ($1/100):($44*0.9*5.88*1E-12) axis x1y1 w l lw 2 lc rgb"red" title "W  photo electron"
replot file.".dat" u ($1/100):($9) axis x1y2 w l lw 2 lc rgb"black" title "E_e_f_f" 
#replot file.".dat" u ($1/100):($8*$8*$3/$28*1.7588*1E11-($49+$50)*$3) axis x1y1 w l lw 2 lc rgb"black" title "Source term now" 

replot file.".dat" u ($1/100):($18) axis x1y1 w l dt(10,5) lw 2 lc rgb"magenta" title "joule"

#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 

replot

