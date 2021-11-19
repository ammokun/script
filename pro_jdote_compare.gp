
#gnuplot -persist  -e "file='00002'" pro_tetg.gp
load "template.gp"
 
set yrange [0:*]
set xrange [0:3]
set size nosquare
set y2tics
set xtics 0.5
set y2range [0:0.5]
set ytics nomirror
set logscale y
set key right
set ylabel  "Incident Energy [Jm^-^3/s]"
set y2label "Absorption ratio"
set y2label font "Arial, 25"
set lmargin 15

plot file.".dat" u ($1/100):($8*$8*$3/$28*1.7588*1E11) axis x1y1 w l lw 2 lc rgb"blue" title "Incident E" # 
replot file.".dat" u ($1/100):(($18/1.6021*1E19)/($8*$8*$3/$28*1.7588*1E11)) axis x1y2 w l lw 2 lc rgb"black" title "Absorption ratio" # 
#replot file.".dat" u ($1/100):(-$65/1.6021*1E19) axis x1y1 w l lw 2 lc rgb"red" title "j dot E" 
#replot file.".dat" u ($1/100):($44*0.9*5.88*1E-12) axis x1y1 w l lw 2 lc rgb"red" title "W  photo electron"
#replot file.".dat" u ($1/100):((-$65/1.6021*1E19)/($8*$8*$3/$28*1.7588*1E11)) axis x1y2 w l lw 2 lc rgb"black" title "j dot E / W_b_f_o_r_e" 
##replot file.".dat" u ($1/100):($8*$8*$3/$28*1.7588*1E11-($49+$50)*$3) axis x1y1 w l lw 2 lc rgb"black" title "Source term now" 

#replot file.".dat" u ($1/100):($18/1.6021*1E19) axis x1y1 w l dt(10,5) lw 2 lc rgb"magenta" title "Transrational heating"


#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 

replot

