#! /bin/bash/ -x

echo "Welcome to Arithmetic Computation and Sorting"

read -p "Enter the num a : " a
read -p "Enter the num b : " b
read -p "Enter the num c : " c

comp1=$(($a+$b*$c))
comp2=$(($a*$b+$c))
comp3=$(($a%$b+$c))
comp4=$(($c+$a/$b))

declare -A result

result["1"]=$comp1
result["2"]=$comp2
result["3"]=$comp3
result["4"]=$comp4




