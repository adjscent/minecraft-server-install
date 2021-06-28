#!/bin/bash

TIME=20
while true; do
    #java -Xms2G -Xmx6G -Dfml.read.Timeout=560 -jar forge-1.16.5-0.7.4.jar nogui
    java -Xms2G -Xmx6G -Dfml.read.Timeout=560 -jar fabric-1.16.5-36.1.32.jar nogui
    echo "----- Press enter to prevent the server from restarting in $TIME seconds -----"
    read -r -t $TIME input
    if [ $? == 0 ]; then
        break
    else
        echo "------------------- SERVER RESTARTS -------------------"
    fi
done
