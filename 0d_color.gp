
#gnuplot -persit -e "file='journal_data/170_160_100/ne_2d_192.dat'"  gnuplot_script/ne_2d.gp

set datafile separator ","
set xlabel font "Arial, 20"
set ylabel font "Arial, 20"
set tics font "Arial, 25"
set pm3d 
set pm3d map
set nokey
set xrange [2:2.45]
set yrange [1E19:1E28]
set cbtics format "10^{%L}"
set ytics format "10^{%L}"
set logscale y
set ticslevel 0
set cbrange[1E-7:5E-6]
set palette defined (1E-7 "white", 1E-6 "yellow",2E-6 "red",  5E-6 "black")
set logscale zcb
#set rmargin 50
#set lmargin 10
set xtics out
set ytics out

#set size 0.9,0.85
set size square
splot file u ($2*1E-6):3:4 with pm3d
