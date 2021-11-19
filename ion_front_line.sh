#!/bin/sh

#bash ion_front.sh ../work210409/170_040_nonrad/output_main/ 100 400 1E15 1000


#directry='./work201016/170_120/output_main/'
directry=$1
#directry='./'
threshold=$4
sout=$5
dx=$(echo 'scale=10; 2.99792458/(1.70)'|bc -l) #299792458/(170*10^9)*1000 mm
dt=$(echo "scale=10; $5/(170*10^3)"|bc -l) #$5/(170*10^9)*10^6 micro sec
#echo $dt
#echo $dx

number=$6

delta=$((($3-$2)/$number))
for ((i=0; i<number; i++)) do
    point[i]=$(echo "$2+$delta*$i"|bc -l)
    file[i]=$(printf "%s%05d.dat" $directry ${point[i]})
    p[i]=$(cat ${file[i]} | awk -v th=$threshold '$3+0>th{print $1 ;exit}')
    p[i]=$(echo ${p[i]} | sed 's/^0*//')
    p[i]=$(echo ${p[i]} | sed 's/,//')
    printf "%d %d\n" ${point[i]} ${p[i]}

done


#echo "($p1-$p2)*1.7635*10^-5" | bc -l 
#velosity=$(echo "(($p1-$p2)*1.7635*10)/(($end-$start)*0.058)" | bc -l)

#echo $velosity
