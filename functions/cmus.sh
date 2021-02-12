#!/bin/bash

# Dependence: cmus

function cmus() {
	program=$(ps -C cmus --no-header | wc -l)
	if [ $program -gt 0 ]; then
		artist=$(cmus-remote -Q | grep 'tag artist' | sed 's/tag artist //g')
		title=$(cmus-remote -Q | grep 'tag title' | sed 's/tag title //g')
		playStatus=$(cmus-remote -Q | grep 'status' | sed 's/status //g')
		random=$(cmus-remote -Q | grep 'set shuffle' | sed 's/set shuffle //g')

		if [ "$playStatus" = "playing" ]; then
			playStatus="契"
		else
			playStatus=""
		fi

		if [ "$random" = "true" ]; then
			random="咽"
		else
			random="劣"
		fi
		
		echo "$playStatus $random $artist - $title"
	
	else
		echo "ﱙ Music"
	fi

}

