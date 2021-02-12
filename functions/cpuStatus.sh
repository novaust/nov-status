#!/bin/bash

# Show the cpu usage, cpu average load and cpu temp
# cpu usage part modified from thytom/dwmbar

function cpuStatus() {
	cpuUsage=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {printf "%.2f\n", usage }')
	cpuLoad=$(cat /proc/loadavg | awk '{print $3}')
	cpuTemp=$(sensors | grep temp1 | awk 'NR==1 {print $2}' | sed 's/+//g')

	echo " $cpuUsage%/$cpuLoad  $cpuTemp"
}

