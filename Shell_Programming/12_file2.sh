#!/bin/bash
#reading from file

while read myvar
do
	echo "value from file is $myvar"
done < file1.txt
