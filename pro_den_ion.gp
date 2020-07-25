#gnuplot -persist -e "file='./170_120_mod/output_nonrad/output_density/00100'" pro_den_ion.gp

set terminal aqua dashed 
set yrange [1E1:*]
set xrange [1.7:2.2]
set key outside
set logscale y
set size square
set xlabel font "Arial, 25"
set ylabel font "Arial, 25"
set tics font "Arial, 20"
set key font "Arial, 15"
set lmargin 5
set bmargin 5
plot file.".dat" u ($1/100):($2*1E-6) w l lw 2 lc rgb"black" title "E"
#replot file.".dat" u ($1/100):($43*1E-6) w l lw 2 lc rgb"dark-red" title "N_2^+"
#replot file.".dat" u ($1/100):($44*1E-6) w l lw 2 lc rgb"orange" title "N_3^+"
#replot file.".dat" u ($1/100):($45*1E-6) w l lw 2 lc rgb"coral" title "N_4^+"
replot file.".dat" u ($1/100):($46*1E-6) w l lw 2 lc rgb"red" title "O^+"
replot file.".dat" u ($1/100):($47*1E-6) w l lw 2 lc rgb"magenta" title "O_2^+"
replot file.".dat" u ($1/100):($48*1E-6) w l lw 2 lc rgb"orange" title "O_3^+"
replot file.".dat" u ($1/100):($49*1E-6) w l lw 2 dt (10,5) lc rgb"light-coral" title "O_4^+"
replot file.".dat" u ($1/100):($50*1E-6) w l lw 2 lc rgb"brown" title "NO^+"
replot file.".dat" u ($1/100):($51*1E-6) w l lw 2 lc rgb"gold" title "O_2^+N_2"
replot file.".dat" u ($1/100):($52*1E-6) w l lw 2 lc rgb"blue" title "O^-"
replot file.".dat" u ($1/100):($53*1E-6) w l lw 2 dt (10,5) lc rgb"dark-blue" title "O_2^-"
replot file.".dat" u ($1/100):($54*1E-6) w l lw 2 dt (10,5) lc rgb"skyblue" title "O_3^-"
replot file.".dat" u ($1/100):($55*1E-6) w l lw 2 lc rgb"cyan" title "O_4^-
replot file.".dat" u ($1/100):($56*1E-6) w l lw 2 lc rgb"green" title "NO^-


#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 

replot

