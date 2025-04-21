#!/bin/bash
id=62
title=tanvir
read -p "Enter your roll: " roll
read -s -p "Enter name: " name

if [ $roll -eq 62 ]
then
	echo "Welcome $roll"
	else
	if [ $name == $title ]
	then
		echo "Hi $ name"
		else
		echo "Invalid name"
	fi
fi
