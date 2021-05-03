#!/bin/bash

# Dependence: amixer(included by alsa-units)

function volume() {
	vol=$(amixer -M sget Master | tail -n 1 | awk -F 'Left:|[][]' '{ print $2 }')
	mute=$(amixer -M sget Master | tail -n 1 | awk -F 'Left:|[][]' '{ print $6 }')
	[ "$mute" = "off" ] && echo "婢 $vol" || echo "墳 $vol" 
}
