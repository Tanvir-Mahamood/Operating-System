#/!bin/bash
#how to store key, value pairs
declare -A arr
arr=( [name]=Tanvir [age]=23 [city]=Raj )
echo "Name is ${arr[name]}"
echo "age is ${arr[age]}"
