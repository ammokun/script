#!/bin/sh

start=25
end=175

directry='./work201016/170_160/output_main/'
threshold=1E15

file1=$(printf "%s%05d.dat" $directry $start)
file2=$(printf "%s%05d.dat" $directry $end)

echo $file1

p1=$(cat $file1 | awk -F',' '$3+0>1E20{print $1;exit}')
p2=$(cat $file2 | awk -F',' '$3+0>1E20{print $1;exit}')

#p1=$(printf "%d" $p1)
#p2=$(printf "%d" $p2)

p1=$(echo $p1 | sed 's/^0*//')
p2=$(echo $p2 | sed 's/^0*//')

p1=$(echo $p1 | sed 's/,//')
p2=$(echo $p2 | sed 's/,//')

echo $p1
echo $p2

echo "($p1-$p2)*1.7635*10^-5" | bc -l 
echo "($end-$start)*5.88E-12*1E3)" | bc -l
velosity=$(echo "(-($p1-$p2)*1.7635*1E-5)/(($end-$start)*5.88E-12*1E3)" | bc -l)

echo $velosity
