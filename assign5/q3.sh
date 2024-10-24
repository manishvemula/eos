#Write a shell script to accept the name from the user and check whether user entered
#name is file or directory. If name is file display its size and if it is directory display its
#contents.


#!/bin/bash

echo "Enter the name:"
read name


if [ -e "$name" ]
then 
	if [ -d "$nam"e ]
	then
		echo "directory"
		ls "$name"
	elif [ -f "$name" ]
	then
		res=$(stat -c%s "$name")
		echo "file and size is $res bytes."
	fi
else
	echo "neither the name  is file nor directory "
fi
