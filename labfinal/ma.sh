#!/bin/bash

# Simple calculator that takes 2 numbers and an operator (+, -, *, /, %)

if [ $# -ne 3 ]; then
    echo "Usage: $0 num1 num2 operator"
    exit 1
fi

if [ "$3" = "+" ]; then
    echo $(($1 + $2))
elif [ "$3" = "-" ]; then
    echo $(($1 - $2))
elif [ "$3" = "*" ]; then
    echo $(($1 * $2))
elif [ "$3" = "/" ]; then
    if [ "$2" -eq 0 ]; then
        echo "Division by zero error"
    else
        echo $(($1 / $2))
    fi
elif [ "$3" = "%" ]; then
    if [ "$2" -eq 0 ]; then
        echo "Modulo by zero error"
    else
        echo $(($1 % $2))
    fi
else
    echo "Operation not supported"
fi
