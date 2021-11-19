#!/bin/sh

# bash gnuplot_script/shock_v.sh work_seminar1/45kw_01atm/output_main/
start=100
end=450

sout=1000
press0=760

threshold=1E15
directry=$1
#directry='./work_seminar1/45kw_01atm/output_main/'

file1=$(printf "%s%05d.dat" $directry $start)
file2=$(printf "%s%05d.dat" $directry $end)
echo $file1


#shock front
p1shock=$(cat $file1 | awk -F',' -v press0=$press0 '$10>press0*1.05{print $1;exit}')
p2shock=$(cat $file2 | awk -F',' -v press0=$press0 '$10>press0*1.05{print $1;exit}')

#ion front
p1ion=$(cat $file1 | awk -F',' '$3>1E20{print $1;exit}')
p2ion=$(cat $file2 | awk -F',' '$3>1E20{print $1;exit}')




#p1ion=$(printf "%d" $p1ion)
#p2ion=$(printf "%d" $p2ion)

p1ion=$(echo $p1ion | sed 's/^0*//')
p2ion=$(echo $p2ion | sed 's/^0*//')

p1ion=$(echo $p1ion | sed 's/,//')
p2ion=$(echo $p2ion | sed 's/,//')

p1shock=$(echo $p1shock | sed 's/^0*//')
p2shock=$(echo $p2shock | sed 's/^0*//')

p1shock=$(echo $p1shock | sed 's/,//')
p2shock=$(echo $p2shock | sed 's/,//')

printf "p1ion=%s p2ion=%s\n" $p1ion $p2ion
printf "p1shock=%s p2shock=%s\n" $p1shock $p2shock

press=$(cat $file2 | awk -v s=$p2shock -F',' 'NR==s,NR==225{press+=$10;} END {print press/(226-s);}')
ionden=$(cat $file2 | awk -v s=$p2ion -F',' 'NR==s,NR==225{ionden+=$3;} END {print ionden/(226-s);}')
tg=$(cat $file2 | awk -v s=$p2ion -F',' 'NR==s,NR==225{tg+=$16;} END {print tg/(226-s);}')
tv=$(cat $file2 | awk -v s=$p2ion -F',' 'NR==s,NR==225{tv+=$15;} END {print tv/(226-s);}')
#dx=$(echo "($p1ion - $p2ion)*1.7635*10^-5" | bc -l) 
#dt=$(echo "($end - $start)*5.88*10^-12*10000" | bc -l)

dxi=$(echo "($p1ion - $p2ion)*1.7635*10^-5" | bc -l) 
dt=$(echo "($end - $start)*5.88*10^-12*$sout" | bc -l)
ion_velosoty=$(echo "$dxi/$dt" | bc -l)
printf "dx=%e[m], dt=%e[s], ion front velocity=%f[m/s]" $dxi $dt $ion_velosoty 
echo " "

dxs=$(echo "($p1shock - $p2shock)*1.7635*10^-5" | bc -l) 

shock_velosoty=$(echo "$dxs/$dt" | bc -l)
printf "dx=%e[m], dt=%e[s], shock front velocity=%f[m/s]" $dxs $dt $shock_velosoty 
echo " "
#press=$(cat $file2 | awk -v s=p2ion -F',' '{i=s;press=0; while(i <= NF){press+=$12; i++;} print press/(NF-s);}')
#cat ./work_seminar1/45kw_01atm/output_main/00050.dat | awk -v s=$p2ion -F',' 'NR >= s {press+=$10;} END {print press/(NF-s);}'

printf "Average Press [atm]=%f" $press
echo " "
printf "Average Electron density [m^-3]=%e" $ionden
echo " "
printf "Average Tg [K]=%f" $tg
echo " "
printf "Average Tv [K]=%f" $tv
echo " "

#ion_velosoty=$(echo "(-($p1ion-$p2ion)*1.7635*1E-5)/(($end-$start)*5.88E-12*$sout)" | bc -l)

#echo $ion_velosoty

