#!/bin/bash

SOCAT_CMD="socat -U - UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"

# Run socat and capture its output
$SOCAT_CMD | while read -r line; do
	if [[ $line == *"monitoradded"* ]]; then
		echo "Monitor connected: $line"
		for i in {2..10}; do
			hyprctl dispatch moveworkspacetomonitor $i DP-1
		done

	elif [[ $line == *"monitorremoved"* ]]; then
		echo "Monitor disconnected: $line"
		for i in {2..10}; do
			hyprctl dispatch moveworkspacetomonitor $i eDP-1
		done
	fi
done
