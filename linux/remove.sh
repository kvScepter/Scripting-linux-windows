#!/bin/bash

echo "Lets delete some files from your home directory. Enter 3 file names Ex. test1.txt test2.txt..."
read del1 del2 del3
echo "i deleted the following files:" $(rm ~/$del1 ~/$del2 ~/$del3) "$del1 $del2 $del3"
