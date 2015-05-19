### Shuo Wang, 700914

#!/bin/bash
sourcefile=""
ck=""
cs=""
tk=""
ts=""
la1=""
lo1=""
la2=""
lo2=""
cadd=""



Dojob (){

cd $fileName
echo Start Harv ...
java -jar tweetsHarv_stream.jar $ck $cs $tk $ts $la1 $lo1 $la2 $lo2 $cadd &
echo  -------------------------------------------
}
while read LINE
do
args=$LINE
fileName=$(echo $args | cut -d"|" -f1)
ck=$(echo $args | cut -d"|" -f2)
cs=$(echo $args | cut -d"|" -f3)
tk=$(echo $args | cut -d"|" -f4)
ts=$(echo $args | cut -d"|" -f5)
la1=$(echo $args | cut -d"|" -f6)
lo1=$(echo $args | cut -d"|" -f7)
la2=$(echo $args | cut -d"|" -f8)
lo2=$(echo $args | cut -d"|" -f9)
cadd=$(echo $args | cut -d"|" -f10)
Dojob
done < jobs_instance6.txt
