#!/bin/bash

read -p "Enter file name to delete: " VASTAUS

if [[ -s $VASTAUS && -f $VASTAUS ]]
    then 
        echo "File is not empty and or it is not regular file. File was NOT deleted" 
    else
        echo "file is empty and it is a regular file. The $VASTAUS was deleted" $(rm $VASTAUS)
fi 
