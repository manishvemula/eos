#8. Write a program to print the table of a given number.


echo "enter num"
read num

for var in {1..10}
do
	var=`expr $var \* $num`
	echo -e   "$var"
done


################################################


i=1
while [ $i -le 10 ]
do
        res=`expr $i \* $num`
        echo -e "$res"
	i=`expr $i + 1`
done

	
