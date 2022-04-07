#!/bin/bash


function count_objects(){
   local paikallinen=$(ls | wc -l)
    echo "number of objects in this direcotry:" ${paikallinen}
    
    
}
count_objects
