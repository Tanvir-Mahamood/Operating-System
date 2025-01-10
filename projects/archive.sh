#!/bin/bash

#variabled
BASE=/mnt/e/test
DAYS=10
DEPTH=1
RUN=0

#check if the directory is present or not
if [[ ! -d $BASE ]]
then
	echo "Directory does not exists"
	exit 1
fi

#create archive folder if not present
if [[ ! -d $BASE/archive ]]
then
	mkdir $BASE/archive
fi

#find the list of files larger than 20MB
for i in `find $BASE -maxdepth $DEPTH -type f -size +20M`
do
	if [[ $RUN -eq 0  ]] # ensure it's a file
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/achive"
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done
