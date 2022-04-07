#!/bin/bash

function network_information(){

IPOSOITE=$(hostname -I)
NAME=$(hostname)

echo $IPOSOITE $NAME

logger -t "network-information" "$IPOSOITE $NAME"

}
network_information
