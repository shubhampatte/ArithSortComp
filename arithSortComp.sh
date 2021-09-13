#! /bin/bash/ -x

echo "Welcome to Arithmetic Computation and Sorting"

read -p "Enter the num a : " a
read -p "Enter the num b : " b
read -p "Enter the num c : " c

comp1=$(($a+$b*$c))
comp2=$(($a*$b+$c))
comp3=$(($a%$b+$c))




