#!/bin/bash

FILEPATH="/mnt/e/3-2 code/OS Lab/Shell_Programming/newfile.txt"

if [[ -f $FILEPATH ]]
then
	echo "File exist"
else
	echo "File does not exist"
	echo "Creating new file"
	touch "$FILEPATH"
fi
