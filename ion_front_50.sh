#!/bin/sh

point1=50
point2=100
point3=150
point4=200
point5=250
point6=300
point7=350

#directry='./output_main/'
directry='./work201016/170_140/output_main/'
#directry='./'
threshold=1E15
file1=$(printf "%s%05d.dat" $directry $point1)
file2=$(printf "%s%05d.dat" $directry $point2)
file3=$(printf "%s%05d.dat" $directry $point3)
file4=$(printf "%s%05d.dat" $directry $point4)
file5=$(printf "%s%05d.dat" $directry $point5)
file6=$(printf "%s%05d.dat" $directry $point6)
file7=$(printf "%s%05d.dat" $directry $point7)

p_ion1=$(cat $file1 | awk  '$3+0>1E20{print $1 ;exit}')
p_ion2=$(cat $file2 | awk  '$3+0>1E20{print $1 ;exit}')
p_ion3=$(cat $file3 | awk  '$3+0>1E20{print $1 ;exit}')
p_ion4=$(cat $file4 | awk  '$3+0>1E20{print $1 ;exit}')
p_ion5=$(cat $file5 | awk  '$3+0>1E20{print $1 ;exit}')
p_ion6=$(cat $file6 | awk  '$3+0>1E20{print $1 ;exit}')
p_ion7=$(cat $file7 | awk  '$3+0>1E20{print $1 ;exit}')

p_shock1=$(cat $file1 | awk  '$12/2.439E25>1.2{print $1 ;exit}')
p_shock2=$(cat $file2 | awk  '$12/2.439E25>1.2{print $1 ;exit}')
p_shock3=$(cat $file3 | awk  '$12/2.439E25>1.2{print $1 ;exit}')
p_shock4=$(cat $file4 | awk  '$12/2.439E25>1.2{print $1 ;exit}')
p_shock5=$(cat $file5 | awk  '$12/2.439E25>1.2{print $1 ;exit}')
p_shock6=$(cat $file6 | awk  '$12/2.439E25>1.2{print $1 ;exit}')
p_shock7=$(cat $file7 | awk  '$12/2.439E25>1.2{print $1 ;exit}')

#echo $p_ion1
p_ion1=$(echo $p_ion1 | sed 's/^0*//')
p_ion2=$(echo $p_ion2 | sed 's/^0*//')
p_ion3=$(echo $p_ion3 | sed 's/^0*//')
p_ion4=$(echo $p_ion4 | sed 's/^0*//')
p_ion5=$(echo $p_ion5 | sed 's/^0*//')
p_ion6=$(echo $p_ion6 | sed 's/^0*//')
p_ion7=$(echo $p_ion7 | sed 's/^0*//')

p_ion1=$(echo $p_ion1 | sed 's/,//')
p_ion2=$(echo $p_ion2 | sed 's/,//')
p_ion3=$(echo $p_ion3 | sed 's/,//')
p_ion4=$(echo $p_ion4 | sed 's/,//')
p_ion5=$(echo $p_ion5 | sed 's/,//')
p_ion6=$(echo $p_ion6 | sed 's/,//')
p_ion7=$(echo $p_ion7 | sed 's/,//')

p_shock1=$(echo $p_shock1 | sed 's/^0*//')
p_shock2=$(echo $p_shock2 | sed 's/^0*//')
p_shock3=$(echo $p_shock3 | sed 's/^0*//')
p_shock4=$(echo $p_shock4 | sed 's/^0*//')
p_shock5=$(echo $p_shock5 | sed 's/^0*//')
p_shock6=$(echo $p_shock6 | sed 's/^0*//')
p_shock7=$(echo $p_shock7 | sed 's/^0*//')

p_shock1=$(echo $p_shock1 | sed 's/,//')
p_shock2=$(echo $p_shock2 | sed 's/,//')
p_shock3=$(echo $p_shock3 | sed 's/,//')
p_shock4=$(echo $p_shock4 | sed 's/,//')
p_shock5=$(echo $p_shock5 | sed 's/,//')
p_shock6=$(echo $p_shock6 | sed 's/,//')
p_shock7=$(echo $p_shock7 | sed 's/,//')

#echo $p_ion1
#p_ion1=$(printf "%d" $p_ion1)
#p_ion2=$(printf "%d" $p_ion2)

printf "%d,%d,%d\n" $point1 $p_ion1 $p_shock1
printf "%d,%d,%d\n" $point2 $p_ion2 $p_shock2
printf "%d,%d,%d\n" $point3 $p_ion3 $p_shock3
printf "%d,%d,%d\n" $point4 $p_ion4 $p_shock4
printf "%d,%d,%d\n" $point5 $p_ion5 $p_shock5
printf "%d,%d,%d\n" $point6 $p_ion6 $p_shock6
printf "%d,%d,%d\n" $point7 $p_ion7 $p_shock7

#echo "($p_ion1-$p_ion2)*1.7635*10^-5" | bc -l 
#velosity=$(echo "(($p_ion1-$p_ion2)*1.7635*10)/(($end-$start)*0.058)" | bc -l)

#echo $velosity
