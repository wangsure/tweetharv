### Shuo Wang, 700914

#!/bin/bash
sourcefile=""
ck=""
cs=""
tk=""
ts=""
la=""
lo=""
rad=""
st=""
et=""
cadd=""



Dojob (){

cd $fileName
echo Start Harv ...
java -jar tweetsHarv.jar $ck $cs $tk $ts $la $lo $rad $st $et $cadd &
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
la=$(echo $args | cut -d"|" -f6)
lo=$(echo $args | cut -d"|" -f7)
rad=$(echo $args | cut -d"|" -f8)
st=$(echo $args | cut -d"|" -f9)
et=$(echo $args | cut -d"|" -f10)
cadd=$(echo $args | cut -d"|" -f11)
Dojob
done < jobs_instance.txt
