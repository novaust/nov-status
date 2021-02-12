#!/bin/bash

function weather() {
	# It will automatic detect your localtion
	data=$(curl -s http://wttr.in/?format=1)
	echo $data
}

