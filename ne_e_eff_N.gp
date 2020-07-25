#gnuplot -persist  -e "file='./output_nonrad/output_main/00002'" ne_e_eff_N.gp

reset
set size square
#set xlabel "x /{/Symbom l}"
#set ylabel "n_e [cm^-^3]"
#set y2label "E_e_f_f/N [Td]"
set logscale y
set ytics nomirror
set y2tics nomirror
set xr[0:3]
set yr[1E10:1E17]
set y2r[0:120]

plot file.".dat" using ($1/100):($3*1E-6) axis x1y1 w l lc"black" title "n_e" #cm-^3
replot file.".dat" using ($1/100):($7/$12*1E21) axis x1y2 w lp lc"red" title "E_e_f_f/N" #Td
#replot file.".dat" using ($1/100):($7/2.439387682*1E-4) axis x1y2 w lp lc"red" title "E_e_f_f/N" #Td
