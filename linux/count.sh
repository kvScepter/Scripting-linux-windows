#!/bin/bash

echo "Lets count how many objects are in given directory"
echo "give me a directory path:" 
read POLKU
echo "You gave me the directory path $POLKU"
echo "and there is" $(ls $POLKU | wc -l) "objects in that directory" 
