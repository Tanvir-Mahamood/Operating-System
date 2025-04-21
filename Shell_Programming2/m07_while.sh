#!/bin/bash
i=1
while [ $i -lt 11 ]
do
	echo $i
	((i++))
done

while (($i >= 1))
do
	echo $i
	((i--))
done

for i in {1..10}
do
	echo $i
done

for ((i=10; i<=100; i+=10))
do
	echo $i
done
