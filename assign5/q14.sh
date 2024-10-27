#Write a shell script to display only executable files of current directory.

#!/bin/bash

for file in *
do
	if [  -x "$file" ] && [ ! -d "$file"  ]
	then
		echo "$file"
	fi

done
