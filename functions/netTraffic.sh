#!/bin/bash

function netTraffic() {
	recv=$(ip -s -h link show enp3s0 | awk 'NR==4 {print $1}')
	send=$(ip -s -h link show enp3s0 | awk 'NR==6 {print $1}')

	echo " $send  $recv"
}
