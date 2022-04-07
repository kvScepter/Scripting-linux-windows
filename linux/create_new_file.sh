#!/bin/bash

NOW=$(date +"%Y-%m-%d")
echo "Lets greate a new file, give it a name" 
read NAME
echo "New file greated and the name is: $NAME"
echo "you can find it from your home folder"
echo $(touch /home/itnoobster/$NAME-$NOW.txt)
