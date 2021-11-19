#!/bin/sh

#bash shock_front.sh ../work210409/170_040_nonrad/output_main/ 100 400 1E15 1000

sout=$5
dx=$(echo 'scale=10; 2.99792458/(1.70)'|bc -l) #299792458/(170*10^9)*1000 mm
dt=$(echo "scale=10; $5/(170*10^3)"|bc -l) #$5/(170*10^9)*10^6 micro sec
#echo $dt
#echo $dx

delta=$((($3-$2)/6))
point1=$2
point2=$(($2+$delta))
point3=$(($2+$delta*2))
point4=$(($2+$delta*3))
point5=$(($2+$delta*4))
point6=$(($2+$delta*5))
point7=$(($2+$delta*6))
#point1=100
#point2=150
#point3=200
#point4=250
#point5=300
#point6=350
#point7=400

#directry='./work201016/170_120/output_main/'
directry=$1
#directry='./'

threshold=$4
file1=$(printf "%s%05d.dat" $directry $point1)
file2=$(printf "%s%05d.dat" $directry $point2)
file3=$(printf "%s%05d.dat" $directry $point3)
file4=$(printf "%s%05d.dat" $directry $point4)
file5=$(printf "%s%05d.dat" $directry $point5)
file6=$(printf "%s%05d.dat" $directry $point6)
file7=$(printf "%s%05d.dat" $directry $point7)

p1=$(cat $file1 | awk -v th=$threshold '$12/2.439E25>th{print $1 ;exit}')
p2=$(cat $file2 | awk -v th=$threshold '$12/2.439E25>th{print $1 ;exit}')
p3=$(cat $file3 | awk -v th=$threshold '$12/2.439E25>th{print $1 ;exit}')
p4=$(cat $file4 | awk -v th=$threshold '$12/2.439E25>th{print $1 ;exit}')
p5=$(cat $file5 | awk -v th=$threshold '$12/2.439E25>th{print $1 ;exit}')
p6=$(cat $file6 | awk -v th=$threshold '$12/2.439E25>th{print $1 ;exit}')
p7=$(cat $file7 | awk -v th=$threshold '$12/2.439E25>th{print $1 ;exit}')
#echo $p1
p1=$(echo $p1 | sed 's/^0*//')
p2=$(echo $p2 | sed 's/^0*//')
p3=$(echo $p3 | sed 's/^0*//')
p4=$(echo $p4 | sed 's/^0*//')
p5=$(echo $p5 | sed 's/^0*//')
p6=$(echo $p6 | sed 's/^0*//')
p7=$(echo $p7 | sed 's/^0*//')

p1=$(echo $p1 | sed 's/,//')
p2=$(echo $p2 | sed 's/,//')
p3=$(echo $p3 | sed 's/,//')
p4=$(echo $p4 | sed 's/,//')
p5=$(echo $p5 | sed 's/,//')
p6=$(echo $p6 | sed 's/,//')
p7=$(echo $p7 | sed 's/,//')
#echo $p1
#p1=$(printf "%d" $p1)
#p2=$(printf "%d" $p2)

printf "%d %d\n" $point1 $p1
printf "%d %d\n" $point2 $p2
printf "%d %d\n" $point3 $p3
printf "%d %d\n" $point4 $p4
printf "%d %d\n" $point5 $p5
printf "%d %d\n" $point6 $p6
printf "%d %d\n" $point7 $p7

#echo "($p1-$p2)*1.7635*10^-5" | bc -l 
#velosity=$(echo "(($p1-$p2)*1.7635*10)/(($end-$start)*0.058)" | bc -l)

#echo $velosity
