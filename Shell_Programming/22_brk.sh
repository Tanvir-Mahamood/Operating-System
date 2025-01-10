#!/bin/bash
read -p "Entera name: " name
while read var
do
	echo "testing with $var"
	if [[ $name == $var ]]
	then
		echo "$name found"
		break
	fi
done < file1.txt

echo "Printing odd numbers"
read -p "Enter n: " n
for (( i=1;i<=$n;i++ ))
do
	r=$((i%2))
	if [[ $r -eq 0 ]]
	then
		continue
	fi
	echo "$i"
done

