#!/bin/bash
exp=$(echo "2+3"|bc)
echo "$exp"

a=5.5
b=3.2
div=$(echo "scale=3;$a/$b"|bc)
echo "Division: $div"

mul=$(echo "scale=3;$a*$b"|bc)
echo "Multiplication is: $mul"

