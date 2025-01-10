#!/bin/bash
arr=( 1 20 30.5 Helo "Hey Buddy!" )
echo "value in 3rd index: ${arr[3]}"
echo "value in 4th index: ${arr[4]}"
echo "all values are: ${arr[*]}"
echo "number of elements in array: ${#arr[*]}"
echo "values from index 2 with next 2 elements ${arr[*]:2:2}"
echo "values from index 2: ${arr[*]:2}"
arr+=( NEW 30 40 )
echo "after updating, ${arr[*]}"
