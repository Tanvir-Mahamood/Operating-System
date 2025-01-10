#!/bin/bash
#checking if the user is root or not
#userid=1000
#rootid=0

if [[ $UID -eq 0 ]]
then
	echo "User is root"
else
	echo "User is not root"
fi
