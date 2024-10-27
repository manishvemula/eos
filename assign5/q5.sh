#Write a Program to find the greatest of three numbers

 echo -e -n  "enter n1: "
 read n1

 echo -e -n  "enter n2: "
 read n2

 echo -e -n "enter n3: "
 read n3

if [ $n1 -gt $n2 ]
then
	echo "1"
	if [ $n1 -gt $n3 ]
	then
		echo "max is n1"
	else
		echo "max is n3"
	fi
else
	echo "2"
	if [ $n2 -gt $n3 ]
	then
		echo "max is n2"
	else
		echo "max is n3"
	fi	
fi
