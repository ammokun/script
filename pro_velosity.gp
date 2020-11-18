set terminal aqua dashed

set size square
set xlabel font "Arial, 25"
set ylabel font "Arial, 25"
set tics font "Arial, 30"
#set ytics format "10^{%L}"
set key font "Arial, 15"
set xr [0.3:1.7]

plot "work201016/velosity.dat" u 1:2 w lp lw 3 pt 5 ps 2 lc rgb"red" notitle
replot "work201016/velosity.dat" u 1:3 w lp lw 3 pt 5 ps 2 lc rgb"blue" notitle
replot "work201016/velosity.dat" u 1:4 w lp lw 3 pt 5 ps 2 dt (10,5) lc rgb"blue" notitle
replot "work201016/vel_oda.dat" u 1:2 w lp lw 3 pt 5 ps 2 lc rgb"black" notitle
replot "work201016/vel_oda.dat" u 1:3 w lp lw 3 pt 5 ps 2 dt (10,5) lc rgb"black" notitle