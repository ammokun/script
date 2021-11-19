
#gnuplot -persit -e "file='journal_data/170_160_100/ne_2d_192.dat'"  gnuplot_script/ne_2d.gp

set dgrid3d
set nosurface
set contour base
set view 0,0
set datafile separator ","

set xlabel font "Arial, 20"
set ylabel font "Arial, 20"
set tics font "Arial, 25"



set xrange [2:2.45]
set yrange [1E18:1E29]
set logscale y
set ytics format "10^{%L}"
set logscale z
set ztics format "10^{%L}"

set cntrparam levels discrete 2E-8, 4E-8, 6E-8, 8E-8, 1E-7, 2E-7,4E-7,6E-7,8E-7, 1E-6, 1.2E-6, 1.4E-6, 1.6E-6, 1.8E-6, 2E-6
#set rmargin 50
#set lmargin 10


#set size 0.9,0.85
set size square
splot file u ($2*1E-6):3:4 w l
