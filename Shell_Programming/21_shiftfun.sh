#!/bin/bash

if [[ $# -eq 0 ]]
then
	echo "Plz, enter atleast 2 arguments"
	exit 1
fi

echo "Welcome $1"
shift
echo "Description: $@"
