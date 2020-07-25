load "template.gp"

set xrange [2:2.3]
set yrange[1E14:*]
set xtics 0.1
set logscale y
plot file.".dat" u ($1/100):($1548*1E-6) w l lw 2 lc rgb"red" title"O2=>E+O2^+"
replot file.".dat" u ($1/100):($1550*1E-6) w l lw 2 lc rgb"blue" title"N2=>N2(C4)"

#replot file.".dat" u ($1/100):($1547*1E-6) w l lw 2 title"N2(C4)=>N+N(2D)"
replot file.".dat" u ($1/100):($1546*1E-6) w l lw 2 lc rgb"purple" title"N2(C4)=>N2"

#replot file.".dat" u ($1/100):($953*1E-6) w l lw 2 title"E+N2=>E+E+N2^+"
