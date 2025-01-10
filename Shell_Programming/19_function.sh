#!/bin/bash
function welcomeNote {
	echo "----------------"
	echo "Welcome"
	echo "----------------"
}

welcomeNote
welcomeNote
welcomeNote

goodBye() {
	echo "Good buy"
	echo "have a nice day"
}

goodBye
goodBye

echo "Lets learn arguments"

Welcome() {
	echo "Welcome $1"
	echo "You are $2 years old"
}

Welcome Dipe 23
Welcome Taunuja 18
