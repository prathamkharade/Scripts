#This script is for finding available devices on a particular network. I have used bash for scripting. Copy this code into a file named ipsweep.sh and run in terminal using ./ipsweep 192.168.1 or any other ip.
#Change mode to x (execute) in linux before you run

#!/bin/bash

if [ "$1" == "" ]; then
    echo "You forgot an ip address"
    echo "Syntax : ./ipsweep 192.168.1"

else
    for ip in $(seq 1 254); do
        ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
    done
fi
