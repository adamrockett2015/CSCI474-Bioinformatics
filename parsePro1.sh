#/bin/bash

var="1"
echo "resNum	ddG" > resddg.txt


while [ $var -lt 26046 ]
do
echo "...$var"

grep -A 4 -w "NO. $var" 'results wild mutation ddg.txt' > temp.txt
echo "curr" >> temp.txt

wild=$(grep -w "PDB_wild " temp.txt)
mutant=$(grep -w "MUTATION " temp.txt)
ddg=$(grep -w "ddG " temp.txt)

echo $wild


if [ "$wild" = "PDB_wild 1BNI" ];
then 
    echo $mutant	$ddg >> resddg.txt
fi
var=$((var + 1))
done

#TODO:
# run with mutant PDB and protein but no wild PDB
