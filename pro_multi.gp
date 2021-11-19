height = 0.4
lms  = 0.10
#rms  = 0.97
rms = 0.85
hms  = 0.03

bms3 = 0.08
tms3 = bms3 + height
bms2 = tms3 + hms
tms2 = bms2 + height
bms1 = tms2 + hms
tms1 = bms1 + height

sizex = 6
sizey = 4

set tics    font "arial,20"
set key     font "arial,20"
set title   font "arial,20"
set label   font "arial,20"
set xlabel  font "arial,20"
set ylabel  font "arial,20"
#set zlabel  font "arial,20"
set y2label font "arial,20"
#set cblabel font "arial,20"

#set terminal pdf enhanced color size sizex in, sizey in
#set output "plot.pdf"

set multiplot

set xr [0:2]
set xtics 0.2
set format y "%4.0f"


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
set logscale y2
set y2r [1E10:*]
set y2label "Electron density [cm^-^3]"
set y2label offset 1,0


plot "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($16) axis x1y1  noti   w l lw 2 lc rgb"red",\
 "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($3*1E-6) axis x1y2  noti   w l lw 2 lc rgb"black"
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($14)  noti    w l lw 2 lc rgb"blue"    , \
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($15)  noti   w l lw 2 lc rgb"purple"   , \
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($16)  noti   w l lw 2 lc rgb"red" 
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($14)  ti "T_e"   w l lw 2 lc rgb"blue"    , \
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($15)  ti "T_v"  w l lw 2 lc rgb"purple"   , \
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($16)  ti "T_g"  w l lw 2 lc rgb"red" 

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
set logscale y2
set y2r [1E10:*]
set y2label "Electron density [cm^-^3]"
set y2label offset 1,0


plot "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($16) axis x1y1  noti   w l lw 2 lc rgb"red",\
 "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($3*1E-6) axis x1y2  noti   w l lw 2 lc rgb"black"
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($14)  noti    w l lw 2 lc rgb"blue"    , \
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($15)  noti   w l lw 2 lc rgb"purple"   , \
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($16)  noti   w l lw 2 lc rgb"red" 
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($14)  ti "T_e"   w l lw 2 lc rgb"blue"    , \
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($15)  ti "T_v"  w l lw 2 lc rgb"purple"   , \
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($16)  ti "T_g"  w l lw 2 lc rgb"red" 

unset y2tics
unset y2label

set lmargin screen lms
set rmargin screen rms
set tmargin screen tms3
set bmargin screen bms3

#set label 1 " (c) velocity" at graph 0.02,0.92 left
set xlabel "x/λ" offset 0,1
set ylabel font "arial,20"
set ylabel "Reaction rate [cm^-^3/s]"
set format x "%g"
set logscale y
set yr [1E10:*]
set xtics offset 0,0.3
set format y "10^{%L}"
set nokey

plot \
"../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($32*1E-6)  w l lw 2 lc rgb"blue" title "Electron collision ionization",\
 "../work_CCP/with_pe/output_reaction/00400.dat" u ($1/100):(($46+$47+$48)*1E-6)  w l lw 2 dt (10,5) lc rgb"red" title "Thermal ionization",\
 "../work_CCP/with_pe/output_reaction/00400.dat" u ($1/100):(($40+$41+$42+$43+$44+$45)*1E-6)  w l lw 2 dt (10,5) lc rgb"magenta" title "Associative ionization",\
 "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($44*1E-6)   w l lw 2 lc rgb"purple" title "Photo-ionization",\

#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($32*1E-6)  ti "ion e-n"  w l lw 2 lc rgb"blue" , \
#  "../work_CCP/with_pe/output_main/00400.dat" u ($1/100):($44*1E-6)  ti "photoionization"  w l lw 2 lc rgb"purple"



unset multiplot


set output