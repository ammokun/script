height = 0.28
lms  = 0.10
rms  = 0.90
hms  = 0.03

bms3 = 0.08
tms3 = bms3 + height
bms2 = tms3 + hms
tms2 = bms2 + height
bms1 = tms2 + hms
tms1 = bms1 + height

sizex = 6
sizey = 4

set tics    font "Consolas,12"
set key     font "Consolas,12"
set title   font "Consolas,12"
set label   font "Consolas,12"
set xlabel  font "Consolas,12"
set ylabel  font "Consolas,12"
#set zlabel  font "Consolas,12"
set y2label font "Consolas,12"
#set cblabel font "Consolas,12"

#set terminal pdf enhanced color size sizex in, sizey in
#set output "plot.pdf"

set multiplot

set xr [0:2]
set format y "%4.0f"


set lmargin screen lms
set rmargin screen rms
set tmargin screen tms1
set bmargin screen bms1

#set label 1 " (a) Ionization rate" at graph 0.02,0.92 left
set xlabel ""
set ylabel "Number density [cm^-^3]"
set format x ""
set format y "10^{%L}"
set logscale y
set yr [1E5:*]
set y2tics
set ytics nomirror
#set logscale y2
set y2r [0:*]
set y2label "E/N [Td]"
#set y2label offset 1,0
set key left
plot \
   "work_POP/170_080_rad/output_main/00125.dat" u ($1/100):($9)  ti "E/N"  w l axis x1y2 lw 2 lc rgb"black" , \
  "work_POP/170_080_rad/output_main/00125.dat" u ($1/100):($3*1E-6)  ti "n_e"  w l axis x1y1 lw 2 lc rgb"blue"  
  

unset logscale y
unset y2tics
unset y2label

set lmargin screen lms
set rmargin screen rms
set tmargin screen tms2
set bmargin screen bms2

#set label 1 " (b) Position" at graph 0.02,0.92 left
set xlabel ""
set ylabel "Temperature [K]"
set format x ""
set format y "%g"
set yr [0:1E4]
set y2tics
set ytics nomirror
#set logscale y2
set y2r [0:1.8]
set y2label "N/N_0 [-]"
#set y2label offset 1,0
#set key left
set nokey

plot \
  "work_POP/170_080_rad/output_main/00125.dat" u ($1/100):($12/(2.69E25))  ti "N/N_0"  w l axis x1y2 lw 2 lc rgb"black" , \
  "work_POP/170_080_rad/output_main/00125.dat" u ($1/100):($16)  ti "T_g"   w l axis x1y1 lw 2 lc rgb"red"
  
unset y2tics
unset y2label

set y2label font "Consolas,12"

set lmargin screen lms
set rmargin screen rms
set tmargin screen tms3
set bmargin screen bms3

#set label 1 " (c) velocity" at graph 0.02,0.92 left
set xlabel "x/λ" offset 0,1
set ylabel "Reaction rate [cm^-^3/s]"
set format x "%g"
set logscale y
set yr [1E10:*]
set xtics offset 0,0.3
set format y "10^{%L}"
set key left

plot \
"work_POP/170_080_rad/output_main/00125.dat" u ($1/100):($32*1E-6)  w l lw 2 lc rgb"blue" title "Electron collision ionization",\
 "work_POP/170_080_rad/output_reaction/00125.dat" u ($1/100):(($46+$47+$48)*1E-6)  w l lw 2 dt (10,5) lc rgb"red" title "Thermal ionization",\
 "work_POP/170_080_rad/output_reaction/00125.dat" u ($1/100):(($40+$41+$42+$43+$44+$45)*1E-6)  w l lw 2 dt (10,5) lc rgb"magenta" title "Associative ionization",\
 "work_POP/170_080_rad/output_main/00125.dat" u ($1/100):($44*1E-6)   w l lw 2 lc rgb"purple" title "Photo-ionization",\

#  "../work_POP/170_080_rad/output_main/00125.dat" u ($1/100):($32*1E-6)  ti "ion e-n"  w l lw 2 lc rgb"blue" , \
#  "../work_POP/170_080_rad/output_main/00125.dat" u ($1/100):($44*1E-6)  ti "photoionization"  w l lw 2 lc rgb"purple"

unset multiplot

set output