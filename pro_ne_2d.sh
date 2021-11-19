#!/bin/bash

sout=10^4

threshold=1E15
directry=$1
freq=170 #GHz
freq_b=170 

dt=$(echo "1/$freq*$sout*10^6*10^-9" | bc -l)
#echo $dt


for i in `seq 999`
do
    file=$(printf "%s%05d.dat" $directry $i)    
    cat $file | awk -v t=$i -v dt=$dt -F',' '{ print $1/100,t*dt,$3/1E6}'
    echo " "
done
