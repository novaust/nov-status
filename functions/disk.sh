#!/bin/bash

function disk() {
	total=$(df -h --total | grep 'total' | awk '{print $2}')
	used=$(df -h --total | grep 'total' | awk '{print $3}')
	percentage=$(df -h --total | grep 'total' | awk '{print $5}' | sed 's/%//g')

	if [ $percentage -ge 80 ]; then
		echo "!$used/$total"
	else
		echo " $used/$total"
	fi

}

