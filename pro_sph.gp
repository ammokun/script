#gnuplot -persist  -e "file='00002'" electron_rate.gp


set ylabel "Rate [cm^-^3s^-^1]"
set y2label "Electron number density [cm^-^3]" 
set yrange [1E10:*]
set xrange [1.7:2.2]
set y2tics
set key outside
set logscale y
set logscale y2
set y2range [1E10:*]
set size square

plot file.".dat" u ($1/100):($43*1E-6) axis x1y1 w l lw 2 lc rgb"purple" title "Intensity"
replot file.".dat" u ($1/100):($44*1E-6) axis x1y1 w l lw 2 lc rgb"red" title "Photo-ionization rate"
replot file.".dat" u ($1/100):($58*1E-6) axis x1y1 w l lw 2 lc rgb"orange" title "Photo-excitation rate"
#replot file.".dat" u ($1/100):($59*1E-6) axis x1y1 w l lw 2 lc rgb"light-magenta" title  "Photo-dissociation rate"
replot file.".dat" u ($1/100):($60*1E-6) axis x1y1 w l lw 2 lc rgb"light-magenta" title "Photo-detachment rate"
replot file.".dat" u ($1/100):($3*1E-6) axis x1y2 w l lw 2 lc rgb"black" title "Electron number density"

#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 

replot

