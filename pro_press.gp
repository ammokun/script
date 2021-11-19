
load "template.gp"

set yrange [0:*]
set xrange [0:3]
set xtics 0.2
#set size square
set y2tics
set y2range [0:3]
set ytics offset -1, 0
set ytics nomirror
set nokey
set xlabel "x/{/Symbol l}"
set ylabel "Temperature [K]"
set y2label "N/N_0"
set y2label font "Arial, 25"
#set logscale y
plot file.".dat" u ($1/100):($3*1E-6) axis x1y1 w l lw 2 lc rgb"blue" title "n_e" #*1E4 [K]
replot file.".dat" u ($1/100):($12/(2.69E25)) axis x1y2 w l lw 2 lc rgb"red" title "Pressure" #*1E4 [K]
