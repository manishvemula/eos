#Write a shell script to display your LOGIN NAME and HOME directory.


#!/bin/bash

echo -e -n "LOGIN NAME:"
whoami

echo -e -n "HOME:"
echo "$HOME"

