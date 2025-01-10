#!/bin/bash
echo "Enter an choice"
echo "a for printinh date"
echo "b for list of all scripts"
echo "c to check current location"
read choice

case $choice in
	a)
		echo "Today's date: "
		date
		echo "Ending..."
		;;
	b)
		echo "Script Description: "
		ls
		echo "Ending..."
		;;
	c)
		echo "Present working directory"
		pwd
		echo "Ending..."
		;;
	*)echo "Invalid cmd"
esac
