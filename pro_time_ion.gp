set terminal aqua dashed 
set yrange [1E12:*]
set xrange [0:40]
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
set y2range [1E5:*]
set logscale y2
set logscale y
set ytics nomirror
set key outside

plot file.".dat" u ($1):(($4)*1E-6) axis x1y1 w l lw 2 lc rgb"black" title "n_e" #*1E4 [K]
replot file.".dat" u ($1):(($33)*1E-6) axis x1y2 w l lw 2 lc rgb"red" title "Electron collision"
replot file.".dat" u ($1):(($34)*1E-6) axis x1y2 w l lw 2 lc rgb"magenta" title "Neutral collision"
replot file.".dat" u ($1):(($36)*1E-6) axis x1y2 w l lw 2 lc rgb"coral" title "E detachment"
replot file.".dat" u ($1):(($45)*1E-6) axis x1y2 w l lw 2 lc  rgb"purple" title "Photo-ionization"
#replot file.".dat" u ($1):(($37)*1E-6) axis x1y2 w l lw 2 lc  rgb"blue" title "E-Ion recombination"
#replot file.".dat" u ($1):(($35)*1E-6) axis x1y2 w l lw 2 lc  rgb"dark-green" title "E attachment"
