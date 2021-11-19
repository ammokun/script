set terminal aqua dashed

set size square
set xlabel font "Arial, 25"
set ylabel font "Arial, 25"
set tics font "Arial, 30"
#set ytics format "10^{%L}"
set key font "Arial, 15"
set xr [0.1:]
set xtics 0.4

plot "vel_hamasakisim.dat" u 1:2 w lp lw 3 pt 5 ps 2 lc rgb"blue" notitle
#replot "vel_hamasakisim.dat" u 1:3 w lp lw 3 pt 5 ps 2 dt (10,5) lc rgb"blue" notitle
#replot "work201213/velocity_nonrad.dat" u 1:2 w lp lw 3 pt 5 ps 2  lc rgb"red" notitle
#replot "work201213/velocity_nonrad.dat" u 1:3 w lp lw 3 pt 5 ps 2  dt (10,5) lc rgb"red" notitle
#plot "vel_nakamura.dat" u 1:2 w lp lw 3 pt 5 ps 2  lc rgb"dark-green" notitle
replot "vel_oda.dat" u 1:2 w lp lw 3 pt 1 ps 2 lc rgb"black" notitle
#replot "vel_oda.dat" u 1:3 w lp lw 3 pt 1 ps 2 dt (10,5) lc rgb"black" notitle
replot "work_POP/vel.dat" u 1:2 w lp lw 3 pt 1 ps 2 lc rgb"red" notitle
#replot "vel_takahashi2017.dat" u 1:2 w lp lw 3 pt 5 ps 2  lc rgb"red" notitle

#plot "vel_hamasakisim.dat" u 1:2 w lp lw 3 pt 5 ps 2 lc rgb"red" notitle
#replot "vel_hamasakisim.dat" u 1:3 w lp lw 3 pt 5 ps 2 dt (10,5) lc rgb"red" notitle
#replot "work201213/velocity_rad.dat" u 1:2 w lp lw 3 pt 5 ps 2  lc rgb"blue" notitle
#replot "work201213/velocity_rad.dat" u 1:3 w lp lw 3 pt 5 ps 2  dt (10,5) lc rgb"blue" notitle
##replot "vel_nakamura.dat" u 1:2 w lp lw 3 pt 5 ps 2  lc rgb"orange" notitle
#replot "vel_oda.dat" u 1:2 w lp lw 3 pt 1 ps 2 lc rgb"black" notitle
#replot "vel_oda.dat" u 1:3 w lp lw 3 pt 1 ps 2 dt (10,5) lc rgb"black" notitle

#replot "vel_takahashi2017.dat" u 1:2 w lp lw 3 pt 5 ps 2  lc rgb"red" notitle