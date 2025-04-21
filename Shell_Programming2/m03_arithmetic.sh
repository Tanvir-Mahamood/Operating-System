#!/bin/bash
echo "Basic  Arithmetic Operations"
num1=15
num2=4

# addition, subtraction, multiplication, integer division
sum=$((num1+num2))
echo "$num1+$num2=$sum"

diff=$((num1-num2))
echo "$num1-$num2=$diff"

prod=$((num1*num2))
echo "$num1*$num2=$prod"

quot=$((num1/num2))
echo "$num1/$num2=$quot"

rem=$((num1%num2))
echo "$num1%$num2=$rem"

power=$((num1**num2))
echo "$num1^$num2=$power"

# square root, floating division
sqrt=$(echo "scale=4; sqrt(&num1)" | bc)
echo "$sqrt"

float_div=$(echo "scale=4; $num1/$num2" |bc)
echo "floating division=$float_div"
