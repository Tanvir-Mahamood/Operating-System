#!/bin/bash
str="Hey Buddy, How are you?"
strLength=${#str}
echo "Length of string: $strLength"
echo "Upper case is: ${str^^}"
echo "Lower case is: ${str,,}"
echo "Original string: $str"

newStr=${str/Buddy/World}
echo "Updated string: $newStr"
echo "Subject: ${newStr:4:5}"
