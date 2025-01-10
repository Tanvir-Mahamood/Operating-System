#!/bin/bash
arr=( 1 2 3 Hello Hi )
length=${#arr[*]}
for (( i=0;i<$length;i++ ))
do
	echo "Value of array: ${arr[i]}"
done
