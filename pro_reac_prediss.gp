
load "template.gp"
plot file.".dat" u ($1/100):1525 w l lw 2 title"E+N=>E+N(2P)"
replot file.".dat" u ($1/100):1527 w l lw 2 title"E+N(D)=>E+N(2P)"
