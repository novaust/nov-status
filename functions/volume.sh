#!/bin/bash

# Dependence: amixer(included by alsa-units)

volume() {
	vol=$(amixer -M sget Master | tail -n 1 | awk -F 'Left:|[][]' '{ print $2 }')
	mute=$(amixer -M sget Master | tail -n 1 | awk -F 'Left:|[][]' '{ print $6 }')
	
	if [ "$mute" = "off" ]; then
		echo "婢 0%"
	else
		echo "墳 $vol" 
	fi
}

