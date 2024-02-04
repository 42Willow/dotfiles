# Slightly modified version of https://github.com/quantum5/wayland-recorder/blob/master/record-screen

#!/bin/bash

if ! pgrep -x "wl-screenrec" > /dev/null; then # if wl-screenrec is running
    region="$(slurp -d -c f5bde6)"
    recordings_dir="$HOME/Videos/Recordings"  # Set the desired directory
    filename="$recordings_dir/screen_recording_$(date +"%d-%m-%Y_%H-%M-%S").mp4"
    if [ ! -z "$region" ]; then
        pkill -USR1 -x screend.sh
        mkdir -p "$recordings_dir"
        if [ "$1" == "audio" ]; then
            dunstify "Screen recording" " Audio enabled"
            wl-screenrec -g "$region" -f "$filename" --audio --low-power=off &
        else
            dunstify "Screen recording" " Audio disabled"
            wl-screenrec -g "$region" -f "mute_$filename" --low-power=off &
        fi
        wait $! # Wait for the last background process to finish
        pkill -USR2 -x screend.sh
        dunstify "Screen recording saved"
    fi
else
    dunstify "Screen recording cancelled" "A screen recording is already running"
fi
