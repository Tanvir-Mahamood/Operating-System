#!/bin/bash

read -p "Which site you want? " site

ping -c 1 $site &> /dev/null
cond=$?
#sleep 1s

if [[ $cond -eq 0 ]]
then
	echo "Successfully conected to $site"
else
	echo "Unable to connect $site"
fi
