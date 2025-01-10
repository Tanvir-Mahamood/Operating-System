#!/bin/bash
# script to show how to use variables
a=10
name="Tanvir"
age=28

echo "My name is $name and I am $age years old"
name="Tanvir mahamood"
echo "My name is $name"

#var to store the output of a command
HOSTNAME=$(hostname)
echo "Name of the machine is $HOSTNAME"

#constant
readonly COLLEGE="SJC"
echo "If u change $COLLEGE, error will occurs"
