set terminal aqua dashed 
set yrange [1:*]
set xrange [0:20]
set key outside
#set logscale y
#set xtics 0.5
#set mxtics 

set size square
set xlabel font "Arial, 25"
set ylabel font "Arial, 25"
set tics font "Arial, 25"
#set ytics format "10^{%L}"
set key font "Arial, 15"
set lmargin 5
set bmargin 5

set y2tics
set y2range [0:*]
set logscale y2
set logscale y
set ytics nomirror
set key outside

plot file.".dat" u ($1):($3) axis x1y1 w l lw 2 lc rgb"blue" title "n_e" #*1E4 [K]
replot file.".dat" u ($1):($30) axis x1y2 w l lw 2 lc rgb"black" title "S_e" #*1E4 [K]
#replot file.".dat" u ($1):($19) axis x1y2 w l  lw 2 dt (10,5) lc rgb"black" title "Endothermic" #*1E4 [K]
