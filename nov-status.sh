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
while true; do
	separator=" "
	display=""
	for func in "${!arrayFunc[@]}"; do
		display="$display$separator$(${arrayFunc[$func]})"
	done

	xsetroot -name "$display"
	sleep 1
done
