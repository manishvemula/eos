#Write a program to find given number of terms in the Fibonacci series.


#!/bin/bash

echo "enter num"
read num
n1=0
n2=1
echo "0"
echo "1"
i=2
while [ $i -lt $num ]
do
	n3=`expr $n1 + $n2`
	echo "$n3"
	n1=$n2
	n2=$n3
	i=`expr $i + 1`
done


