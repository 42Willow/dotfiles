#!/bin/sh

# run hyprpicker and then dunstify the output
output=$(hyprpicker --autocopy)
dunstify "Picked $output" "<span foreground='$output' size='xx-large'></span>"