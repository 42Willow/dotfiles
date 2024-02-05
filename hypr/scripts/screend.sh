#!/bin/bash

status_file="/tmp/screen_recording_status"

while true; do
    if [ -e "$status_file" ]; then
        echo "$(cat "$status_file")"
    else
        echo  
    fi
    sleep 1
done
