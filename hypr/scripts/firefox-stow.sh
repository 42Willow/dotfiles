#!/bin/sh

# Stow firefox
stow firefox -d $HOME/.dotfiles -t $HOME/.mozilla/firefox/ujr98y71.default-release/chrome
ls -l $HOME/.mozilla/firefox/ujr98y71.default-release/chrome
dunstify -u low "Firefox" "Firefox stowed"
