set datafile separator ","

set xlabel font "Arial, 20"
set ylabel font "Arial, 20"
set y2label font "Arial, 20"
set tics font "Arial, 20"
set key font "Arial, 15"
set label font "Arial,15"
set size square
set xrange [0:3]
set yrange [0:3]
set key outside

f(x)=a*x+b
a=0.01
b=-0.1
fit [0:3][:] f(x) 'ionfront_170_160_w_n2c4.dat' u ($1*0.00588):(-($2-225)*0.01) via a,b
g(x)=c*x+d
c=0.01
d=-0.1
fit [0:3][:] g(x) '170_140_ionfront.dat' u ($1*0.00588):(-($2-225)*0.01) via c,d
h(x)=e*x+f
e=0.01
f=-0.1
fit [0:3][:] h(x) '170_120_ionfront.dat' u ($1*0.0588):(-($2-225)*0.01) via e,f

plot "ionfront_170_160_w_n2c4.dat" u ($1*0.00588):(-($2-225)*0.01)  w p title "1.6 MV/m"
replot "170_140_ionfront.dat"  u ($1*0.00588):(-($2-225)*0.01) w p title "1.4 MV/m "
replot "170_120_ionfront.dat"  u ($1*0.0588):(-($2-225)*0.01) w p title "1.2 MV/m"
replot f(x) notitle 
replot g(x) notitle
replot h(x) notitle
v3=sprintf("v3=%3.1f\n",e*1763.5)
set label v3 at graph 1.2,0.85
v2=sprintf("v2=%3.1f\n",c*1763.5)
set label v2 at graph 1.2,0.8
v1=sprintf("v1=%3.1f\n",a*1763.5)
set label v1 at graph 1.2,0.75
replot
