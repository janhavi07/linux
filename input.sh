#!/bin/bash -x

declare -A TESTC
read -p "Enter the value of a" a
read -p "Enter the value of b" b
read -p "Enter the value of c" c
echo $a $b $c
TESTC[test1]=$(($a + $b * $c))
TESTC[test2]=$(($c + $a/$b))

echo ${TESTC[test2]}
