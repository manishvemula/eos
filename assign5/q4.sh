#4. Write a shell script to determine whether a given number is prime or not

#!/bin/bash

echo "Enter a number:"
read num

flag=0
i=2
while [ $i -le `expr $num / 2` ]
do
    if [ `expr $num % $i` -eq 0 ]
    then
        flag=1
        break
    fi
    i=`expr $i + 1`
done

if [ $num -le 1 ]
then
    echo "Not prime"
elif [ $flag -eq 0 ]
then
    echo "Prime"
else
    echo "Not prime"
fi

