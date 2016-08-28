#!/bin/bash
#Script for installing swatch.
#Author: Vinod.N K
#Usage: Malware or Unknown Pattern search
#Distro : Linux -Centos, Rhel, and any fedora
#Check whether root user is running the script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

PATTERNS=r57sh c99sh h00ly 0wn3d rst.void.ru
PATTERNS_FINAL=$(echo $PATTERNS | sed 's/  /|/g')
find /home/*/public_html/ -type f -exec grep -Eil "$PATTERNS_FINAL" {} ; >> /root/scanresult.txt

echo "Search result are in /root/scanresult.txt"
