#!/bin/bash

# This part modified from thytom/dwmbar

function battery() {
	dir=/sys/class/power_supply
	exist=$(ls -F $dir | grep '/$' | grep 'BAT' | wc -w)
	if [ $exist -gt 0 ]; then
		name=BAT1	# change BAT1 to the name of your own battery
		batCharge=$(cat $dir/$name/capacity)
		batStatus=$(cat $dir/$name/status)
		icon=""
		if [ "$batStatus" = "Full" ] && [ $batCharge -ge 98 ]; then
			echo " $batCharge%"
		elif [ "$batStatus" = "Charging" ]; then
			echo " $batCharge%"
		elif [ "$batStatus" = "Discharging" ]; then
			
			if [ "$batCharge" -eq "100" ]; then
				icon=""
			elif [ $batCharge -ge 70 ]; then
				icon=""
			elif [ $batCharge -ge 50 ]; then
				icon=""
			elif [ $batCharge -ge 30 ]; then
				icon=""
			elif [ $batCharge -ge 10 ]; then
				icon=""
			else
				icon=""
			fi

			echo "$icon $batCharge%"
		fi
	else
		echo " No BAT"
	fi
}

