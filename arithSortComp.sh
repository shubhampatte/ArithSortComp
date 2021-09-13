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

num=0

declare -a resultArray

while [ $num -lt 4 ]
do
	resultArray[((num++))]=${result[$num]}
done

for (( i=0; i<4; i++ ))
do
        for (( j=i+1; j<4; j++ ))
        do
                if [ "${resultArray[i]}" -lt "${resultArray[j]}" ]
                then
                        temp=${resultArray[i]}
                        resultArray[i]=${resultArray[j]}
                        resultArray[j]=$temp;
                fi
        done
done

echo ${resultArray[*]}




