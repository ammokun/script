set terminal aqua dashed 
set yrange [1:*]
set xrange [0:20]
set key outside
set logscale y
#set xtics 0.5
#set mxtics 

set size square
set xlabel font "Arial, 25"
set ylabel font "Arial, 25"
set tics font "Arial, 25"
set ytics format "10^{%L}"
set key font "Arial, 15"
set lmargin 5
set bmargin 5

plot file.".dat" u ($1):($4*1E-6) w l lw 2 lc rgb"red" title "N2"
replot file.".dat" u ($1):($33*1E-6) w l lw 2 lc rgb"blue" title "O2"
replot file.".dat" u ($1):($30*1E-6) w l lw 2 lc rgb"orange" title "N"
replot file.".dat" u ($1):($31*1E-6) w l lw 2 dt (10,10,3,10) lc rgb"red" title "N(D)"
replot file.".dat" u ($1):($32*1E-6) w l lw 2 lc rgb"dark-pink" title "N(P)"
replot file.".dat" u ($1):($37*1E-6) w l lw 2 lc rgb"cyan" title "O"
replot file.".dat" u ($1):($38*1E-6) w l lw 2 dt (10,5) lc rgb"blue" title "O(D)"
replot file.".dat" u ($1):($25*1E-6) w l lw 2 dt (10,5) lc rgb"magenta" title "N2(A3)"
replot file.".dat" u ($1):($27*1E-6) w l lw 2 dt (10,5) lc rgb"red" title "N2(a'1)"
#replot file.".dat" u ($1):($34*1E-6) w l lw 2 lc rgb"green" title "O2(a1)"
#replot file.".dat" u ($1):($40*1E-6) w l lw 2 lc rgb"brown" title "O3"
replot file.".dat" u ($1):($41*1E-6) w l lw 2 dt (10,5) lc rgb"dark-goldenrod" title "NO"
replot file.".dat" u ($1):($3*1E-6) w l lw 2 lc rgb"black" title "E"
replot file.".dat" u ($1):($5*1E-6) w l lw 2 lc rgb"pink" title "N2(v=1)"
replot file.".dat" u ($1):($29*1E-6) w l lw 2 lc rgb"purple" title "N2(C4)
