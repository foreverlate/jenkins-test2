#!/bin/bash

value1=10
echo "value 1 " + $value1

if [[ $value1 -gt 10 ]]
then
     echo "The variable is greater than 10."
elif [[ $value1 -eq 10 ]]
then
     echo "The variable is equal to 10."
else
     echo "The variable is lesser than 10."
fi
