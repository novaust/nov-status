#!/bin/bash

function battery() {
	dir=/sys/class/power_supply
	exist=$(ls -F $dir | grep '/$' | grep 'BAT' | wc -w)
	if [ $exist -gt 0 ]; then
		path=$dir/BAT1	# change BAT1 to the name of your own battery
		batCharge=$(cat $path/capacity); batStatus=$(cat $path/status)
		iconList=""; icon=""
		if [ "$batStatus" = "Charging" ]; then echo " $batCharge%"
		elif [ "$batStatus" = "Discharging" ]; then
            pos=$(( $batCharge / 10 ))
            icon=${iconList:$pos:1}
			echo "$icon $batCharge%"
		fi
	else 
        echo " No BAT"; 
    fi
}
