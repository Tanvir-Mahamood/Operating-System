#!/bin/bash

cat file2.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do
	echo "$id, $name, $age"
done
