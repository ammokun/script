#!/bin/bash

FILE="output_loss/00010.dat"
cat $FILE | while read LINE
do
  ID=$(awk '{ print $1 }' <<< $LINE)
  SUM0=$(awk '{ for(i=4; i<=12; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM1=$(awk '{ for(i=32; i<=41; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM2=$(awk '{ for(i=60; i<=69; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM3=$(awk '{ for(i=88; i<=98; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM4=$(awk '{ for(i=117; i<=128; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM5=$(awk '{ for(i=147; i<=159; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM6=$(awk '{ for(i=178; i<=191; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM7=$(awk '{ for(i=210; i<=224; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM8=$(awk '{ for(i=243; i<=258; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM9=$(awk '{ for(i=277; i<=292; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM10=$(awk '{ for(i=311; i<=326; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM11=$(awk '{ for(i=345; i<=360; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM12=$(awk '{ for(i=377; i<=392; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM13=$(awk '{ for(i=409; i<=423; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM14=$(awk '{ for(i=440; i<=453; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM15=$(awk '{ for(i=470; i<=482; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM16=$(awk '{ for(i=499; i<=510; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM17=$(awk '{ for(i=527; i<=537; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM18=$(awk '{ for(i=554; i<=563; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM19=$(awk '{ for(i=580; i<=588; ++i){ sum+=$i } print sum }' <<< $LINE)
  SUM20=$(awk '{ for(i=605; i<=612; ++i){ sum+=$i } print sum }' <<< $LINE) 
  #SUM=`echo SUM0+SUM1+SUM2+SUM3+SUM4+SUM5+SUM6+SUM7+SUM8+SUM9+SUM10+SUM11+SUM12+SUM13+SUM14+SUM15+SUM16+SUM17+SUM18+SUM19+SUM20 |bc -l`
  echo "$ID,$SUM0,$SUM1,$SUM2,$SUM3,$SUM4,$SUM5,$SUM6,$SUM7,$SUM8,$SUM9,$SUM10,$SUM11,$SUM12,$SUM13,$SUM14,$SUM15,$SUM16,$SUM17,$SUM18,$SUM19,$SUM20"
done
