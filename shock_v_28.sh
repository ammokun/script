#!/bin/sh

# bash gnuplot_script/shock_v.sh work_seminar1/45kw_01atm/output_main/
start=10
end=40

sout=1000

threshold=1E15
directry=$1
#directry='./work_seminar1/45kw_01atm/output_main/'

file1=$(printf "%s%05d.dat" $directry $start)
file2=$(printf "%s%05d.dat" $directry $end)
echo $file1

p1=$(cat $file1 | awk -F',' '$12/2.439E25>1.2*0.2{print $1;exit}')
p2=$(cat $file2 | awk -F',' '$12/2.439E25>1.2*0.2{print $1;exit}')

echo $p1
echo $p2

#p1=$(printf "%d" $p1)
#p2=$(printf "%d" $p2)

p1=$(echo $p1 | sed 's/^0*//')
p2=$(echo $p2 | sed 's/^0*//')

p1=$(echo $p1 | sed 's/,//')
p2=$(echo $p2 | sed 's/,//')

press=$(cat $file2 | awk -v s=$p2 -F',' 'NR==s,NR==1822{press+=$10;} END {print press/(1822-s);}')
tg=$(cat $file2 | awk -v s=$p2 -F',' 'NR==s,NR==1822{tg+=$16;} END {print tg/(1822-s);}')
tv=$(cat $file2 | awk -v s=$p2 -F',' 'NR==s,NR==1822{tv+=$15;} END {print tv/(1822-s);}')
dx=$(echo "($p1 - $p2)*6.50*10^-4" | bc -l) 
dt=$(echo "($end - $start)*3.57*10^-11*1000" | bc -l)
#dx=$(echo "($p1 - $p2)*1.7635" | bc -l) 
#dt=$(echo "($end - $start)*5.88" | bc -l)
velosity=$(echo "$dx/$dt*1000" | bc -l)
printf "dx=%f[m], dt=%f[s], shock velocity=%f[m/s]" $dx $dt $velosity 
echo " "
#press=$(cat $file2 | awk -v s=p2 -F',' '{i=s;press=0; while(i <= NF){press+=$12; i++;} print press/(NF-s);}')
#cat ./work_seminar1/45kw_01atm/output_main/00050.dat | awk -v s=$p2 -F',' 'NR >= s {press+=$10;} END {print press/(NF-s);}'

printf "Average Press [atm]=%f" $press
echo " "
printf "Average Tg [K]=%f" $tg
echo " "
printf "Average Tv [K]=%f" $tv
echo " "

#velosity=$(echo "(-($p1-$p2)*1.7635*1E-5)/(($end-$start)*5.88E-12*$sout)" | bc -l)

#echo $velosity

