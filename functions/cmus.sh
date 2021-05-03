#!/bin/bash

# Dependence: cmus

function cmus() {
	program=$(ps -C cmus --no-header | wc -l)
	if [ $program -gt 0 ]; then
		artist=$(cmus-remote -Q | grep 'tag artist' | sed 's/tag artist //g')
		title=$(cmus-remote -Q | grep 'tag title' | sed 's/tag title //g')
		playStatus=$(cmus-remote -Q | grep 'status' | sed 's/status //g')
		random=$(cmus-remote -Q | grep 'set shuffle' | sed 's/set shuffle //g')

		[ "$playStatus" = "playing" ] && playStatus="契" || playStatus=""
		[ "$random" = "true" ] && random="咽" || random="劣"
		echo "$playStatus $random $artist - $title"
	fi
}

