#!/bin/bash

 
NOGO="\e[1;91m%s\e[0m"
GOGO="\e[1;92m%s\e[0m"

read -p "Enter URL to ping: " PINGURL

function pingpong(){
ping -c 1 $PINGURL
if [ "$?" -eq 0 ]
then 
  echo
  echo $GOGO "Ping OKAY"
  exit 0
else
  echo
  echo $NOGO "No Ping Here..TRY AGAIN"
  exit 1
fi
}
pingpong
