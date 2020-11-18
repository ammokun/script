#gnuplot -persist  -e "file='00002'" electron_rate.gp

set terminal aqua dashed 
set yrange [1E1:*]
set xrange [1.8:2.3]
set key outside
set logscale y
set xtics 0.1
#set mxtics 

set size square
set xlabel font "Arial, 25"
set ylabel font "Arial, 25"
set tics font "Arial, 25"
set ytics format "10^{%L}"
set key font "Arial, 15"
set lmargin 5
set bmargin 5
plot file.".dat" u ($1/100):($3*1E-6) w l lw 2 lc rgb"red" title "N2"
replot file.".dat" u ($1/100):($4*1E-6) w l lw 2 lc rgb"blue" title "N2(v=1)"
replot file.".dat" u ($1/100):($5*1E-6) w l lw 2 lc rgb"orange" title "N2(v=2)"
replot file.".dat" u ($1/100):($6*1E-6) w l lw 2 dt (10,10,3,10) lc rgb"red" title "N2(v=3)"
replot file.".dat" u ($1/100):($7*1E-6) w l lw 2 lc rgb"dark-pink" title "N2(v=4)"
replot file.".dat" u ($1/100):($8*1E-6) w l lw 2 lc rgb"cyan" title "N2(v=5)"
replot file.".dat" u ($1/100):($9*1E-6) w l lw 2 dt (10,5) lc rgb"blue" title "N2(v=6)"
replot file.".dat" u ($1/100):($10*1E-6) w l lw 2 dt (10,5) lc rgb"magenta" title "N2(v=7)"
replot file.".dat" u ($1/100):($11*1E-6) w l lw 2 dt (10,5) lc rgb"red" title "N2(v=8)"
replot file.".dat" u ($1/100):($12*1E-6) w l lw 2 lc rgb"green" title "N2(v=9)"
replot file.".dat" u ($1/100):($13*1E-6) w l lw 2 lc rgb"brown" title "N2(v=10)"
replot file.".dat" u ($1/100):($14*1E-6) w l lw 2 dt (10,5) lc rgb"dark-goldenrod" title "N2(v=11)"
replot file.".dat" u ($1/100):($15*1E-6) w l lw 2 lc rgb"black" title "N2(v=12)"
replot file.".dat" u ($1/100):($16*1E-6) w l lw 2 lc rgb"pink" title "N2(v=13)"
replot file.".dat" u ($1/100):($17*1E-6) w l lw 2 lc rgb"purple" title "N2(v=14)

#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 

replot

