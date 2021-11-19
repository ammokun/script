#!/bin/bash

#bash gnuplot_script/pro_time.sh work210409/170_020_rad/output_main/>test.txt
sout=10^4

threshold=1E15
directry=$1
freq=170 #GHz
freq_b=170 

x=151

dt=$(echo "1/$freq*$sout*10^6*10^-9" | bc -l)
#echo $dt


for i in `seq 750`
do
    file=$(printf "%s%05d.dat" $directry $i)    
    cat $file | awk -v t=$i -v dt=$dt -v x=$x  -F',' 'NR==x{ print t*dt "," $0}'
done
