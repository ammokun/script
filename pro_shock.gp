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
fit [0:3][:] f(x) 'work201016/ion_flont_170_180.dat' u ($1*0.00588):(-($3-225)*0.01) via a,b
g(x)=c*x+d
c=0.01
d=-0.1
fit [0:3][:] g(x) 'work201016/ion_flont_170_160.dat' u ($1*0.00588):(-($3-225)*0.01) via c,d
h(x)=e*x+f
e=0.01
f=-0.1
fit [0:3][:] h(x) 'work201016/ion_flont_170_140.dat' u ($1*0.00588):(-($3-225)*0.01) via e,f

i(x)=a2*x+b2
a2=0.01
b2=-0.1
fit [0:3][:] i(x) 'work201016/ion_flont_170_120.dat' u ($1*0.00588):(-($3-225)*0.01) via a2,b2

plot "work201016/ion_flont_170_180.dat" u ($1*0.00588):(-($3-225)*0.01)  w p title "1.8 MV/m"
replot "work201016/ion_flont_170_160.dat"  u ($1*0.00588):(-($3-225)*0.01) w p title "1.6 MV/m "
replot "work201016/ion_flont_170_140.dat"  u ($1*0.00588):(-($3-225)*0.01) w p title "1.4 MV/m"
replot "work201016/ion_flont_170_120.dat"  u ($1*0.00588):(-($3-225)*0.01) w p title "1.2 MV/m"
replot f(x) notitle 
replot g(x) notitle
replot h(x) notitle
replot i(x) notitle
v4=sprintf("v1.2=%3.1f\n",a2*1763.5)
set label v4 at graph 1.2,0.7
v3=sprintf("v1.4=%3.1f\n",e*1763.5)
set label v3 at graph 1.2,0.65
v2=sprintf("v1.6=%3.1f\n",c*1763.5)
set label v2 at graph 1.2,0.6
v1=sprintf("v1.8=%3.1f\n",a*1763.5)
set label v1 at graph 1.2,0.55
replot
