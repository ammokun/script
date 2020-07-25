#!/bin/sh

start=10
end=30

directry='./080_02atm/output_main/'
threshold=1E15

file1=$(printf "%s%05d.dat" $directry $start)
file2=$(printf "%s%05d.dat" $directry $end)

echo $file1

p1=$(cat $file1 | awk -F',' '$3+0>1E19{print $1;exit}')
p2=$(cat $file2 | awk -F',' '$3+0>1E19{print $1;exit}')

#p1=$(printf "%d" $p1)
#p2=$(printf "%d" $p2)

echo $p1
echo $p2

#echo "($p1-$p2)*1.7635*10^-5" | bc -l 
velosity=$(echo "(($p1-$p2)*1.7635*10)/(($end-$start)*0.058)" | bc -l)

echo $velosity
