#!/bin/bash
#read from .csv file

echo "starting..."
while IFS="," read -r id name age;
do
	echo "fetching"
	echo "$id, $name, $age"
done < "file2.csv"
