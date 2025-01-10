#!/bin/bash
read -p "Enter your marks: " marks
if [[ $marks -ge 80 ]]
then
	echo "A+"
elif [[ $marks -ge 60 ]]
then
	echo "A"
elif [[ $marks -ge 50 ]]
then
	echo "A-"
else
	echo "Faild"
fi
