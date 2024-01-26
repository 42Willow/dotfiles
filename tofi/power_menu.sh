#!/bin/bash

# Define the power menu options
options="Shutdown\nReboot\nSuspend\nLog Out\nDisplays Off"

# Display the power menu and capture the selection
selected_option=$(echo -e "$options" | tofi --prompt-text "Power Menu: ")

# Process the selected option
case "$selected_option" in
  "Shutdown")
    echo "Shutting down..."
    poweroff
    ;;
  "Reboot")
    echo "Rebooting..."
    reboot
    ;;
  "Suspend")
    echo "Suspending..."
    systemctl suspend
    ;;
  "Log Out")
    echo "Logging out..."
    hyprctl dispatch exit
    ;;
  "Displays Off")
    echo "Blanking screens..."
    hyprctl dispatch dpms off
    ;;
  *)
    echo "Invalid option selected."
    ;;
esac
