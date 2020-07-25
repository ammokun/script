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

#plot file.".dat" u ($1/100):($953*1E-6) w l lw 2 title "952"
plot file.".dat" u ($1/100):($980*1E-6) w l lw 2 title "979"
replot file.".dat" u ($1/100):($1006*1E-6) w l lw 2 title "1005"
replot file.".dat" u ($1/100):($1033*1E-6) w l lw 2 title "1032"
replot file.".dat" u ($1/100):($1061*1E-6) w l lw 2 title "1060"
replot file.".dat" u ($1/100):($1090*1E-6) w l lw 2 title "1089"
replot file.".dat" u ($1/100):($1120*1E-6) w l lw 2 title "1119"
replot file.".dat" u ($1/100):($1151*1E-6) w l lw 2 title "1150"
replot file.".dat" u ($1/100):($1183*1E-6) w l lw 2 title "1182"
replot file.".dat" u ($1/100):($1215*1E-6) w l lw 2 title "1214"
replot file.".dat" u ($1/100):($1247*1E-6) w l lw 2 title "1246"             
