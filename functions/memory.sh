#!/bin/bash

memory() {
	total=$(free | grep "Mem" | awk {'print $2'})
	used=$(free | grep "Mem" | awk {'print $3'})
	percentage=$(awk 'BEGIN{printf "%.1f\n", ('$used' / '$total') * 100}')
	totalMem=$(free -h --si | grep "Mem" | awk {'print $2'})
	usedMem=$(free -h --si | grep "Mem" | awk {'print $3'})

	if [ $(echo "$percentage > 75.0" | bc) -eq 1 ]; then
		echo "!$usedMem/$totalMem"
	else
		echo " $usedMem/$totalMem"
	fi
}

