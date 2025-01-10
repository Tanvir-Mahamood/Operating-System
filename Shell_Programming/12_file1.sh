#!/bin/bash
#getting input from file
FILE="/mnt/e/3-2 code/OS Lab/Shell_Programming/file1.txt"
for num in $(cat "$FILE");
do
	echo "Name is: $num"
done
