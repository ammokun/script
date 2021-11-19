
#gnuplot -persit -e "file='journal_data/170_160_100/ne_2d_192.dat'"  gnuplot_script/ne_2d.gp


set xlabel "Time [{/Symbol m}s]"
set ylabel "x/{/Symbol l}"
set pm3d  
set pm3d map
set nokey
set xrange [0:30]
set yrange [0:3]
set cbtics format "10^{%L}"
#set ticslevel 0
set cbrange[1E8:1E15]
#set palette defined (0 "black", 1E8 "red", 1E15 "yellow")
set logscale zcb
set lmargin 10
set rmargin 50
set xlabel font "Arial, 25"
set ylabel font "Arial, 25"
set tics font "Arial, 25"
set xtics offset 0, -0.1
set ytics offset -0.1, 0
set ylabel offset -4, 0
set xtics out
set ytics out

set size 0.9,1
#set size square
splot file."ne_2d.dat" u 2:1:3 with pm3d
unset pm3d
#unset logscale zcb
#unset cbrange
replot file."ion_front_line.dat" u ($1*0.0588):($2/100):($2) w l lw 2 lc rgb"black" 

set terminal postscript eps color enhanced
#set terminal jpeg


set out "image1.eps"
replot
