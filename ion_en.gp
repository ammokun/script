set terminal aqua dashed
set yrange [1E1:*]
set xrange [2:2.5]
set key outside
set logscale y
set size square
set xlabel font "Arial, 25"
set ylabel font "Arial, 25"
set tics font "Arial, 20"
set key font "Arial, 15"
set lmargin 5
set bmargin 5

plot file.".dat" u ($1/100):($953*1E-6) w l lw 2 title "N_2"
replot file.".dat" u ($1/100):($980*1E-6) w l lw 2 title "N_2(v1)"
replot file.".dat" u ($1/100):($1520*1E-6) w l lw 2 title "O_2"
replot file.".dat" u ($1/100):($1532*1E-6) w l lw 2 title "O_2(A1)"
replot file.".dat" u ($1/100):($1536*1E-6) w l lw 2 title "O_2(B1)"
replot file.".dat" u ($1/100):($1540*1E-6) w l lw 2 title "N_2(A3)"
replot file.".dat" u ($1/100):($1544*1E-6) w l lw 2 title "N_2(A'1)"
replot file.".dat" u ($1/100):($1523*1E-6) w l lw 2 title "O"
replot file.".dat" u ($1/100):($1526*1E-6) w l lw 2 title "N"
replot file.".dat" u ($1/100):($1528*1E-6) w l lw 2 title "N(2D)"
replot file.".dat" u ($1/100):($1545*1E-6) w l lw 2 title "NO"             
