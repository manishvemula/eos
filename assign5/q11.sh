#11. Write a program to calculate gross salary if the DA is 40%, HRA is 20% of basic salary.
#Accept basic salary form user and display gross salary (Result can be floating point value).


#!/bin/bash

echo "basic salary:"
read sal

da=$( echo "scale=2; $sal * 0.4" | bc )
hra=$( echo "scale=2; $sal * 0.2" | bc )
gross=$( echo "scale=2; $sal + $da + $hra" | bc )
echo "gross sal=$gross"


