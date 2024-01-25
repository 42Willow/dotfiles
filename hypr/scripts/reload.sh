#!/bin/bash

processes=(
    "dunst"
    "waybar"
    "hyprpaper"
)

# See https://docs.gtk.org/Pango/pango_markup.html for possible formatting

for process in "${processes[@]}"; do
    if pgrep -x "$process" > /dev/null; then
        killall "$process"
        hyprctl dispatch exec "$process"
        dunstify "reload.sh" "restarted <b>$process</b>"
    else
        dunstify "reload.sh" "<b>$process</b> is not running"
    fi
done
