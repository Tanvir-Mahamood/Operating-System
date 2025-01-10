#!/bin/bash
read -p "Enter your age: " age
read -p "Enter your country name: " country

if [[ $age -ge 18 ]] && [[ $country == "Bangladesh" ]]
then
	echo "you can vote"
else
	echo "You cannot vote"
fi

[[ $age -ge 18 ]] && echo "adult" || echo "child"
