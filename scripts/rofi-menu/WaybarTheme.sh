#!/bin/bash

# vars
dir="${HOME}/.config/waybar/themes"
command="rofi -dmenu"
waydir="${HOME}/.config/waybar"

# selection
selection=$(ls "${dir}" -t | $command)
[[ -n "$selection" ]] || exit 1

rm $waydir/style.css
cp $dir/$selection $waydir/style.css

echo $dir/$selection $waydir/style.css

killall waybar
waybar

exit 0
