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
replot file.".dat" u ($1/100):($979*1E-6) w l lw 2 title "N_2(v1)"
replot file.".dat" u ($1/100):($1519*1E-6) w l lw 2 title "O_2"
replot file.".dat" u ($1/100):($1531*1E-6) w l lw 2 title "O_2(A1)"
replot file.".dat" u ($1/100):($1535*1E-6) w l lw 2 title "O_2(B1)"
replot file.".dat" u ($1/100):($1539*1E-6) w l lw 2 title "N_2(A3)"
replot file.".dat" u ($1/100):($1543*1E-6) w l lw 2 title "N_2(A'1)"
replot file.".dat" u ($1/100):($1522*1E-6) w l lw 2 title "O"
replot file.".dat" u ($1/100):($1525*1E-6) w l lw 2 title "N"
replot file.".dat" u ($1/100):($1527*1E-6) w l lw 2 title "N(2D)"
replot file.".dat" u ($1/100):($1545*1E-6) w l lw 2 title "NO"             
