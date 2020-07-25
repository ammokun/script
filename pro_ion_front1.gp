set datafile separator ","

set xlabel font "Arial, 20"
set ylabel font "Arial, 20"
set y2label font "Arial, 20"
set tics font "Arial, 20"
set key font "Arial, 15"
set label font "Arial,15"
set size square
set xrange [0:5]
set yrange [0:3]
set key outside

f(x)=a*x+b
a=0.01
b=-0.1
fit [0:5][:] f(x) '170_160_w_n2c4_ionfront.dat' u ($1*0.00588):(-($2-225)*0.01) via a,b

plot "170_160_w_n2c4_ionfront.dat" u ($1*0.00588):(-($2-225)*0.01)  w p title "1.6 MV/m"
replot f(x) notitle 
va=sprintf("v1=%3.1f\n",a*1763.5)
set label va at graph 1.2,0.75
replot
