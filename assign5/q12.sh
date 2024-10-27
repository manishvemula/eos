#12. Write a shell script to accept a filename as argument and displays the last modification
#time if the file exists and a suitable message if it doesn’t exist.

#!/bin/bash

#if [ $# -eq 0 ]; then
 #   echo "No filename provided. Please provide a filename as an argument."
  #  exit 1
#fi
file=$1

if [ -e "$file" ]
then
	mod=$(stat -c %y "$file")
	echo "last modification of $file : $mod"
else
	echo "it does not exist"
fi



