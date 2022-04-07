#!/bin/bash

echo "copy file to antoher directory"
echo "give me file to copy with the path ex:/home/username/move.txt"
read KOPIO
echo "and where do you want the copy to go. Ex:/home/username/test"
read MINNE
echo "Copied $KOPIO" $(cp $KOPIO $MINNE) "to" $MINNE
