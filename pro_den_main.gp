#gnuplot -persist  -e "file='00002'" electron_rate.gp

set terminal aqua dashed 
set yrange [1:*]
set xrange [0:3]
set key outside
set logscale y
set xtics 0.5
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
replot file.".dat" u ($1/100):($32*1E-6) w l lw 2 lc rgb"blue" title "O2"
replot file.".dat" u ($1/100):($29*1E-6) w l lw 2 lc rgb"orange" title "N"
replot file.".dat" u ($1/100):($30*1E-6) w l lw 2 dt (10,10,3,10) lc rgb"red" title "N(D)"
replot file.".dat" u ($1/100):($31*1E-6) w l lw 2 lc rgb"dark-pink" title "N(P)"
replot file.".dat" u ($1/100):($36*1E-6) w l lw 2 lc rgb"cyan" title "O"
replot file.".dat" u ($1/100):($37*1E-6) w l lw 2 dt (10,5) lc rgb"blue" title "O(D)"
replot file.".dat" u ($1/100):($24*1E-6) w l lw 2 dt (10,5) lc rgb"magenta" title "N2(A3)"
replot file.".dat" u ($1/100):($26*1E-6) w l lw 2 dt (10,5) lc rgb"red" title "N2(a'1)"
#replot file.".dat" u ($1/100):($33*1E-6) w l lw 2 lc rgb"green" title "O2(a1)"
#replot file.".dat" u ($1/100):($39*1E-6) w l lw 2 lc rgb"brown" title "O3"
replot file.".dat" u ($1/100):($40*1E-6) w l lw 2 dt (10,5) lc rgb"dark-goldenrod" title "NO"
replot file.".dat" u ($1/100):($2*1E-6) w l lw 2 lc rgb"black" title "E"
replot file.".dat" u ($1/100):($4*1E-6) w l lw 2 lc rgb"pink" title "N2(v=1)"
replot file.".dat" u ($1/100):($28*1E-6) w l lw 2 lc rgb"purple" title "N2(C4)

#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 

replot

