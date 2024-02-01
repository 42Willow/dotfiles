#!/bin/bash

if [ "$1" == "audio" ]; then
    wl-screenrec -g "$(slurp)" --audio --low-power=off
    dunstify "Screen recording" "Audio enabled"
else
    wl-screenrec -g "$(slurp)" --low-power=off
    dunstify "Screen recording" "Audio disabled"
fi