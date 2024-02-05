# Slightly modified version of https://github.com/quantum5/wayland-recorder/blob/master/record-screen

#!/bin/bash

if ! pgrep -x "wl-screenrec" > /dev/null; then # if wl-screenrec is running
    status_file="/tmp/screen_recording_status"
    region="$(slurp -d -c f5bde6)"
    recordings_dir="$HOME/Videos/Recordings"  # Set the desired directory
    filename="$recordings_dir/screen_recording_$(date +"%d-%m-%Y_%H-%M-%S").mp4"
    start_time=$(date +"%s")

    if [ ! -z "$region" ]; then
        echo "Recording " > "$status_file"
        mkdir -p "$recordings_dir"
        if [ "$1" == "audio" ]; then
            dunstify "Screen recording" " Audio enabled"
            wl-screenrec -g "$region" -f "$filename" --audio --audio-backend pactl info | awk '/Default Sink/ {print $3}' --low-power=off &
        else
            dunstify "Screen recording" " Audio disabled"
            wl-screenrec -g "$region" -f "$filename" --low-power=off &
        fi
        # wait $! # Wait for the last background process to finish
       while pgrep -x "wl-screenrec" > /dev/null; do
            current_time=$(date +"%s")
            elapsed_time=$((current_time - start_time))
            formatted_time=$(date -u -d @"$elapsed_time" +"%T")
            echo -ne "  $formatted_time" > "$status_file"
            sleep 0.5
        done
        echo "Screen recording saved"
        rm "$status_file"

        nautilus_response=$(dunstify -t 0 -A yes,nautilus "  Screen recording saved" "Click to view in nautilus")
        
        if [ "$nautilus_response" == "yes" ]; then
            nautilus "$filename"
        fi
    fi
else
    dunstify "Screen recording cancelled" "A screen recording is already running"
fi