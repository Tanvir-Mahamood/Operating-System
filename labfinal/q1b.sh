#!/bin/bash

# Displaying greeting based on user input time (24 hour formate)
# Input: 24, Output = Sleeping

read -p "Enter time in 24 hour format)" t

if [ $t -ge 22 ]
then
	echo "Sleeping"
elif [ $t -ge 18 ]
then
	echo "Good Evening"
elif [ $t -ge 16 ]
then
	echo "Good Afternoon"
elif [ $t -ge 12 ]
then
	echo "Its Noon"
elif [ $t -ge 5 ]
then 
	echo "Good Morning"
else
	echo "a"
fi
