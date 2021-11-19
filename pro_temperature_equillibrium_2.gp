set terminal aqua dashed

#set size square
set xlabel font "Arial, 25"
set ylabel font "Arial, 25"
set tics font "Arial, 25"
#set ytics format "10^{%L}"
set key font "Arial, 15"
set xr [0.1:0.8]
set yr [0:1]
set xtics 0.2
set ylabel "Temperature ratio [-]"
set xlabel "E_0_,_r_m_s [MV/m]"
#set y2tics
#set y2range [0:700]
#set y2label "U_i_o_n [m/s]"
#set y2label font "Arial, 25"
#set ytics nomirror
#set key outside right
set nokey
plot "~/Dropbox/labratory/ukaren2021/tetgtv.dat" u 1:($4/$2) w lp lw 3 pt 5 ps 2  dt (10,5) lc rgb"blue" title "Sim. T_g / T_e" 
replot "tabata_tvtr.dat" u (sqrt($1*377*1E9)/1E6):($2/$3) w lp lw 3 pt 5 ps 2 dt (10,5)  lc rgb"orange" title "Tabata's exp. T_r / T_v" 
#replot "~/Dropbox/labratory/ukaren2021/tetgtv.dat" u 1:$3 w lp lw 3 pt 5 ps 2  lc rgb"purple"title "T_v"
#replot "~/Dropbox/labratory/ukaren2021/tetgtv.dat" u 1:4 w lp lw 3 pt 5 ps 2  lc rgb"red" title "T_g"

#replot "../work_POP/vel.dat" u 1:2 axis x1y2 w lp lw 3 pt 1 ps 2 lc rgb"blue" title"Sim. U_i_o_n"
#replot "../vel_oda.dat" u 1:2 axis x1y2 w lp lw 3 pt 1 ps 2 lc rgb"red" title "Oda's exp. U_i_o_n"
#replot "vel_takahashi2017.dat" u 1:2 w lp lw 3 pt 5 ps 2  lc rgb"red" notitle
#replot "28G_100kpa.dat" u (sqrt($1*377*1E9)/1E6):2 axis x1y2  w lp lw 3 pt 1 ps 2 lc rgb"orange"  title "Tabata's exp. U_i_o_n"
#replot "bogatov.dat" u 1:2 axis x1y2 w l lw 3  lc rgb"purple" notitle