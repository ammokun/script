#gnuplot -persist  -e "file='00002'" pro_tetg.gp
 
load "template.gp"

set yrange [*:*]
set xrange [0:3]
set size square
#set y2tics
#set y2range [0:*]
set ytics nomirror
set key below
set datafile separator ","
set lmargin 10

set bmargin 10


plot file.".dat" u ($1/100):($2) axis x1y1 w l lw 2 title "E+N2=>E+N2(Vn)"
replot file.".dat" u ($1/100):($3) axis x1y1 w l lw 2 title "E+N2(v1)=>E+N2(Vn)"

replot file.".dat" u ($1/100):($4) axis x1y1 w l lw 2 title "E+N2(v2)=>E+N2(Vn)"
replot file.".dat" u ($1/100):($5) axis x1y1 w l lw 2 title "E+N2(v3)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($6) axis x1y1 w l lw 2 title "E+N2(v4)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($7) axis x1y1 w l lw 2 title "E+N2(v5)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($8) axis x1y1 w l lw 2 title "E+N2(v6)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($9) axis x1y1 w l lw 2 title "E+N2(v7)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($10) axis x1y1 w l lw 2 title "E+N2(v8)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($11) axis x1y1 w l lw 2 title "E+N2(v9)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($12) axis x1y1 w l lw 2 title "E+N2(v10)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($13) axis x1y1 w l lw 2 title "E+N2(v11)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($14) axis x1y1 w l lw 2 title "E+N2(v12)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($15) axis x1y1 w l lw 2 title "E+N2(v13)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($16) axis x1y1 w l lw 2 title "E+N2(v14)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($16) axis x1y1 w l lw 2 title "E+N2(v15)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($17) axis x1y1 w l lw 2 title "E+N2(v16)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($18) axis x1y1 w l lw 2 title "E+N2(v17)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($19) axis x1y1 w l lw 2 title "E+N2(v18)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($20) axis x1y1 w l lw 2 title "E+N2(v19)=>E+N2(Vn)"
#replot file.".dat" u ($1/100):($21) axis x1y1 w l lw 2 title "E+N2(v20)=>E+N2(Vn)"
#plot file.".dat" u ($1/100):($2+$3+$4+$5+$6+$7+$8+$9+$10) axis x1y1 w l lw 2 title "vibrate(i)"
#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 

#replot