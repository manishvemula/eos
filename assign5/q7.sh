#Write a Program to find whether a given number is positive or negative



echo "num:"
read n

if [ $n -gt 0 ]
then
	echo "pos"
elif [ $n -eq 0 ]
then
	echo "zero"
else
	echo "neg"
fi
