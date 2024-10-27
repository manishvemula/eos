#factorial of given num


#!/bin/bash

echo "enter num:"
read num


i=1
res=1
while [ $i -le $num ]
do
	res=`expr $res \* $i`
	i=`expr $i + 1`
done

echo "fact is $res"
