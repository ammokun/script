
#gnuplot -persist  -e "file='00002'" pro_tetg.gp
load "template.gp"
 
set yrange [1E2:*]
set xrange [0:3]
set size square
set y2tics
set xtics 0.5
set y2range [*:*]
set ytics nomirror
set logscale y
set key below
set ylabel  "Energy [eV/s]"
#set y2label "in - out Energy [eV/s]"
#set y2label font "Arial, 25"
set lmargin 15
set rmargin 20

#plot file.".dat" u ($1/100):(($49+$50)*$3*1.602176634E-19) axis x1y1 w l lw 2 lc rgb"purple" title "W electron collision" #
#plot file.".dat" u ($1/100):($44*0.9) axis x1y1 w l lw 2 lc rgb"red" title "W  photo electron" 
#plot file.".dat" u ($1/100):($8*$8/$28/9.11E31*1.6021766E-19) axis x1y1 w l lw 2 lc rgb"blue" title "W by field" 
plot file.".dat" u ($1/100):($8*$8/$28*1.7587E11)*$3*1.602176634E-19 axis x1y1 w l lw 2 lc rgb"red" title "W  by field"
#replot file.".dat" u ($1/100):($44*0.9*5.88*1E-12) axis x1y1 w l lw 2 lc rgb"red" title "W  photo electron"
#replot file.".dat" u ($1/100):($9) axis x1y2 w l lw 2 lc rgb"black" title "E_e_f_f" 
#replot file.".dat" u ($1/100):($8*$8*$3/$28*1.7588*1E11-($49+$50)*$3) axis x1y1 w l lw 2 lc rgb"black" title "Source term now" 

replot file.".dat" u ($1/100):(($49+$50)*$3*1.602176634E-19) axis x1y1 w l lw 2 lc rgb"blue" title "W electron collision" 
#replot file.".dat" u ($1/100):($14) axis x1y2 w l dt(10,5) lw 2 lc rgb"magenta" title "Electron Temperature"

#replot file.".dat" u ($1/100):($24) axis x1y1 w l lw 2 lc rgb"purple" title"electron to vibrational"
#replot file.".dat" u ($1/100):($18) axis x1y1 w l lw 2 lc rgb"red" title"electron to translational"
#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 
replot file.".dat" u ($1/100):($18) axis x1y1 w l lw 2 lc rgb"turquoise" title "joule"
replot file.".dat" u ($1/100):($8*$8/$28*1.7587E11*$3*1.60217634E-19-($49+$50)*$3*1.60217634E-19) axis x1y2 w l lw 2 lc rgb"black" title "W by field - Energy loss"
replot

