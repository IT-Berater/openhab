#!/bin/bash 

# Auslesen der Systemtemperatur des Raspberry Pi via OpenHAB. 
#
# (c) 2016 Thomas Wenzlaff http://www.wenzlaff.info 
#

TEMP=$(cat /sys/class/thermal/thermal_zone0/temp)
awk "BEGIN {printf \"%.2f\n\", $TEMP/1000}"
