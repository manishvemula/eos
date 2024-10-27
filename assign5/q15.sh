#Accept the two file names from user and append the contents in reverse case of first file
#into second file.

#!/bin/bash

if [ $# -eq 0 ]
then
	echo "enter 2 files names as arg"
fi

file1=$1
file2=$2

if [ ! -f "$file1" ]
then
	echo "$file does not exist"
	exit 1
fi

cat "$file1" | tr "a-zA-Z" "A-Za-z" >> "$file2"

echo "Contents of $file1 appended to $file2 in reverse case."

