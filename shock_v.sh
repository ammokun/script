#!/bin/sh

start=50
end=150

threshold=1E15

directry='./work201016/output_main/'

file1=$(printf "%s%05d.dat" $directry $start)
file2=$(printf "%s%05d.dat" $directry $end)
#echo $file1

p1=$(cat $file1 | awk -F',' '$12/2.439E25>1.2{print $1;exit}')
p2=$(cat $file2 | awk -F',' '$12/2.439E25>1.2{print $1;exit}')

#p1=$(printf "%d" $p1)
#p2=$(printf "%d" $p2)

echo $p1
echo $p2

#echo "($p1-$p2)*1.7635*10^-5" | bc -l 
velosity=$(echo "(($p1-$p2)*1.7635*1E-5)/(($end-$start)*5.88E-12*1E3)" | bc -l)

echo $velosity
