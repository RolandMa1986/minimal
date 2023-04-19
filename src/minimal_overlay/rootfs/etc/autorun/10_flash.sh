#!/bin/sh
set -e

echo "1.Begining flashing disk"

if [ ! -f "/ubuntu.img" ]; then 
 echo -e "\033[31m Ubuntu Image not found, please put the ubuntu.img in the root dir \033[0m"
 exit -1
fi

echo "2.Flashing image to disk"

dd if=/ubuntu.img of=/dev/sda bs=1M

echo "3.Finished！rebooting"

reboot