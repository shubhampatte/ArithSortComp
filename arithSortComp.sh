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

result["0"]=$comp1
result["1"]=$comp2
result["2"]=$comp3
result["3"]=$comp4

declare -a Array

num=0
max=4

while [ $num -lt 4 ]
do
	Array[((num++))]=${result[$num]}
done
echo ${Array[*]}

for (( i=0; i<$max; i++ ))
do
        for (( j=i+1; j<$max; j++ ))
        do
                if [ ${Array[i]} -lt ${Array[j]} ]
                then
                        temp=${Array[i]}
                        Array[i]=${Array[j]}
                        Array[j]=$temp;
                fi
        done
	echo "descending order:" ${Array[*]}
done

for (( i=0; i<$max; i++ ))
do
        for (( j=i+1; j<$max; j++ ))
        do
                if [ ${Array[i]} -gt ${Array[j]} ]
                then
                        temp=${Array[i]}
                        Array[i]=${Array[j]}
                        Array[j]=$temp;
                fi
        done

	echo " ascending order : " ${Array[*]}

done




