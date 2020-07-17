#!/usr/bin/env bash

#global variables are declared in uppercase.
NOME="Gabriel Lima"

#by defoult, using variables string type, are declared with ""
echo "$NOME"

#numbers into variables
NUMBER_1=25
NUMBER_2=24

#the 'output' on calculations has to have two parenthesis following the ex:
# $((number + number)) or if is variables following the exemple below.
TOTAL=$(($NUMBER_1+$NUMBER_2))

echo $TOTAL

echo "---------validating parameters---------"

echo "first parameter: $1"
echo "second parameter: $2"
echo "all params: $*"
echo "how many params? : $#"

#how to inform an execution output that by defaut 0 is ok and 1 is error.
echo "output of the last command: $?"

#how to get the process id: 
echo "PID: $$"

#script name
echo "$0"
