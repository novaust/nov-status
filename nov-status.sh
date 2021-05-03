#!/bin/bash

# A status bar for dwm
# This part modified from joestandring/dwm-bar

# functions work directory
runDir="$(dirname $(readlink -f $0))/functions"

# customize the status bar
arrayFunc=(
	"cmus"
	"netTraffic"
	"memory"
	"disk"
	"cpuStatus"
	"brightness"
	"volume"
	#"battery"
	"dateTime"
)

# Import functions
for num in "${!arrayFunc[@]}"; do
	. "$runDir/${arrayFunc[$num]}.sh"
done

# main
sep=" "
while true; do
	display=""
	for func in "${!arrayFunc[@]}"; do
		str=$(${arrayFunc[$func]})
		[ -n "$str" ] && display=$display$sep$str
	done
	xsetroot -name "$display"
	sleep 1
done
