set size square
set logscale y
set yrange[1E1:*]


plot "170_080_spe.dat" u ($1/100):($2*1E-6) w l lw 2 lc "red" title "with photo excitation"         
replot "170_080_non_spe.dat" u ($1/100):($2*1E-6) w l lw 2 lc "blue" title "without photo excitation"  

