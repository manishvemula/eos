#Write a shell script to display menu like “1. Date, 2. Cal, 3. Ls, 4. Pwd, 5. Exit” and
#execute the commands depending on user choice.

#!/bin/bash

while true;
do
	echo -e -n "1.date \n 2.cal \n 3.ls \n 4.pwd \n 5.exit \n"
	echo -n  "enter your choice :"
	read ch
	case $ch in
		1) date ;;
		2) cal ;;
		3) ls ;;
		4) pwd ;;
		5) echo "bye!" ; exit ;;
		*) echo "invalid"
	esac
done

