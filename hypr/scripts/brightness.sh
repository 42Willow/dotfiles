#!/bin/sh

if [ -z "$1" ]; then
    echo "Usage: $0 <brightness> <monitor>"
    exit 1
fi

if [ -z "$2" ]; then
    echo "Usage: $0 <brightness> <monitor>"
    exit 1
fi

brightnessctl set "$1%"

ddcutil setvcp 10 "$1"

dunstify "Brightness set to $1%"

echo "Brightness adjustment complete."