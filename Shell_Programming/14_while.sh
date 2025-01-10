#!/bin/bash

count=0
num=10

while [[ $count -le $num ]]
do
	echo "value of count variable: $count"
	let count++
done
