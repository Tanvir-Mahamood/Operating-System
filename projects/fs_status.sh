#!/bin/bash
#monitoring the free file system (fs) space disk

FU_C=$(df -H | egrep -v "Filesystem|rootfs|tmpfs|none" | grep "/mnt/c" | awk '{print $5}' | tr -d %)
FU_D=$(df -H | egrep -v "Filesystem|rootfs|tmpfs|none" | grep "/mnt/d" | awk '{print $5}' | tr -d %)
FU_E=$(df -H | egrep -v "Filesystem|rootfs|tmpfs|none" | grep "/mnt/e" | awk '{print $5}' | tr -d %)

echo "Disk status:"
echo "C Drive Usages: $FU_C"
echo "D Drive Usages: $FU_D"
echo "E Drive Usages: $FU_E"

echo "drive Report:"

if [[ $FU_C -ge 80 ]]
then
	echo "Warning, C drive space is low"
elif [[ $FU_C -ge 70 ]]
then
	echo "Suggesting to clean up disk C"
else
	echo "All Good in Drive C"
fi

if [[ $FU_D -ge 80 ]]
then
	echo "Warning, D drive space is low"
else
	echo "All good in Drive D"
fi

if [[ $FU_E -ge 80 ]]
then
	echo "Warning, E drive space is low"
else
	echo "All good in Drive E"
fi
