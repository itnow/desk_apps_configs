#!/bin/bash

# Usage example:
#   $ hdd_to_standby.sh /dev/sdb

echo '*****************************************************'

# `$#` - variable expand to the number of arguments passed to script
#   if [ $# -eq 0  ]; then ...

# `-z string` - True if the length of string is zero.
if [ -z "$1" ]; then
    echo -e "\n"
    echo 'Missed HDD device arg, like "/dev/sdb"...'
    read -p "Press any key to exit... " -n1 -s
    exit 1
fi

HDD=$1

echo "Standby $HDD..."

# Flush the on-drive write cache buffer.
sudo hdparm -F "$HDD"

# Force  an  IDE  drive  to immediately enter the low power consumption standby
# mode, usually causing it to spin down.
sudo hdparm -y "$HDD"

# Check the current IDE power mode status, which will always be one of:
# - unknown (drive does  not support this command)
# - active/idle (normal operation)
# - standby (low power mode, drive has spun down)
# - sleeping (lowest power mode, drive is completely shut down)
sudo hdparm -C "$HDD"

echo -e "\n"
read -p "Press any key to exit... " -n1 -s

