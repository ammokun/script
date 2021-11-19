
load "template.gp"
set yrange [0:*]
set xrange [0:3]
set size square
set logscale y
set y2tics
set y2range [0:*]
set ytics nomirror
set key outside

plot file.".dat" u ($1/100):($18) axis x1y1 w l lw 2 lc rgb"black" title"W_g"
replot file.".dat" u ($1/100):(-$18) axis x1y1 w l lw 2 lc rgb"blue" title"-W_g"
replot file.".dat" u ($1/100):($16) axis x1y2 w l lw 2 lc rgb"red" title"T_g"
replot file.".dat" u ($1/100):($15) axis x1y2 w l lw 2 lc rgb"purple" title"T_v"
