
load "template.gp"
set logscale y
set xrange [1.7:2.2]
plot file.".dat" u ($1/100):($1551*1E-6) w l lw 2 title "O^-"     
replot file.".dat" u ($1/100):($1552*1E-6) w l lw 2title "O2^-"
replot file.".dat" u ($1/100):($1553*1E-6) w l lw 2title "O4^-"  
replot file.".dat" u ($1/100):($1554*1E-6) w l lw 2title "O3^-"  
#replot "./080_phdet/output_density/00100.dat" u ($1/100):($29*1E-6*$53*1E-6*1E-10) w l lw 2 title "O_2^-+N=>NO_2+E"
replot "./080_phdet/output_main/00100.dat" u ($1/100):($35*1E-6) w l lw 2 title "total det rate"   
