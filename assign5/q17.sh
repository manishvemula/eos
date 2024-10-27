#17. Print the following pattern.
#*
#* *
#* * *
#* * * *
#* * * * *


#!/bin/bash

row=5
i=1
while [ $i -le $row ]
do
    j=1
    while [ $j -le $i ]
    do
        echo -n "* "
	j=`expr $j + 1`
    done
    i=`expr $i + 1`
    echo ""  # Newline after each row
done

