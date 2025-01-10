#!/bin/bash

echo "First Arguments: $1"
echo "Second Arguments: $2"
echo "All Arguments: $@"
echo "Number of Arguments: $#"

for filename in $@
do
	echo "Coppying file- $filename"
done
