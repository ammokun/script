#gnuplot -persist  -e "file='00002'" electron_rate.gp

 
#set ylabel 'Partial S_e [cm^-^3s^-^1]'
set yrange [1E10:1E23]
set xrange [0.4:1.4]
set xtics 0.1
set size square
set ytics nomirror
set key outside
set logscale y
set xlabel font "Arial, 25"
set ylabel font "Arial, 25"
set tics font "Arial, 25"
set key font "Arial, 15"
set ytics format "10^{%L}"
set lmargin 15
set bmargin 5
plot file.".dat" u ($1/100):($32*1E-6)  w l lw 2 lc rgb"red" title "Electron collision"
replot file.".dat" u ($1/100):($33*1E-6)  w l lw 2 lc rgb"orange" title "Neutral collision"
replot file.".dat" u ($1/100):($35*1E-6)  w l lw 2 lc rgb"coral" title "E detachment"
replot file.".dat" u ($1/100):($44*1E-6)  w l lw 2 lc rgb"purple" title "Photo-ionization"
replot file.".dat" u ($1/100):($36*1E-6)  w l lw 2 lc rgb"blue" title "E-Ion recombination"
replot file.".dat" u ($1/100):($34*1E-6)  w l lw 2 lc rgb"dark-green" title "E attachment"

replot file.".dat" u ($1/100):($40*1E-6)  w l lw 2 lc rgb"black" title "Total Se generate"

#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 

replot

