#!/bin/sh

point1=50
point2=100
point3=150
point4=200
point5=250
point6=300
point7=350

directry='./170_160_w_n2c4/output_main/'
#directry='./'
threshold=1E15
file1=$(printf "%s%05d.dat" $directry $point1)
file2=$(printf "%s%05d.dat" $directry $point2)
file3=$(printf "%s%05d.dat" $directry $point3)
file4=$(printf "%s%05d.dat" $directry $point4)
file5=$(printf "%s%05d.dat" $directry $point5)
file6=$(printf "%s%05d.dat" $directry $point6)
file7=$(printf "%s%05d.dat" $directry $point7)

p1=$(cat $file1 | awk  '$3+0>1E20{print $1 ;exit}')
p2=$(cat $file2 | awk  '$3+0>1E20{print $1 ;exit}')
p3=$(cat $file3 | awk  '$3+0>1E20{print $1 ;exit}')
p4=$(cat $file4 | awk  '$3+0>1E20{print $1 ;exit}')
p5=$(cat $file5 | awk  '$3+0>1E20{print $1 ;exit}')
p6=$(cat $file6 | awk  '$3+0>1E20{print $1 ;exit}')
p7=$(cat $file7 | awk  '$3+0>1E20{print $1 ;exit}')
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

printf "%d,%d\n" $point1 $p1
printf "%d,%d\n" $point2 $p2
printf "%d,%d\n" $point3 $p3
printf "%d,%d\n" $point4 $p4
printf "%d,%d\n" $point5 $p5
printf "%d,%d\n" $point6 $p6
printf "%d,%d\n" $point7 $p7

#echo "($p1-$p2)*1.7635*10^-5" | bc -l 
#velosity=$(echo "(($p1-$p2)*1.7635*10)/(($end-$start)*0.058)" | bc -l)

#echo $velosity
