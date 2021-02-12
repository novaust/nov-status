#!/bin/bash

function brightness() {
	brightness=$(xrandr --verbose | grep "Brightness" | awk '{print $2}')

	echo " $brightness"
}

