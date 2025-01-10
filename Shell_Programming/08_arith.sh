#!/bin/bash
x=10
y=3
mul=$x*$y
let mul2=$x*$y
echo "$mul"
echo "$mul2"
echo "$((mul))"

echo "Addition = $(($x+$y))"
echo "Subtraction = $(($x-$y))"
echo "Mutiplication = $(($x*$y))"
echo "Division = $(($x/$y))"

#floating divisino
div=$(echo "scale=2;$x/$y"|bc)
echo "Floating Point Division: $div"

mul3=$(echo "scale=2;$x*$y"|bc)
echo "Floating point multiplication: $mul3"

echo "Power = $(($x**$y))"

pow=$(echo "$x ^ $y"|bc)
echo "Power using bc: $pow"

((x++))
echo "After increment of x: $x"

sqrt=$(echo "scale=2;sqrt($x)"|bc)
echo "sqrt(x): $sqrt"

exp=$(echo "e(2)"|bc -l)
echo "Exponential of 2: $exp"

log=$(echo "l(10)"|bc -l)
echo "natural logarithm of 10: $log"
