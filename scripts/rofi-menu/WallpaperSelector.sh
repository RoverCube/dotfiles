#!/bin/bash

# vars
wallpapersdir="${HOME}/Wallpapers"
command="rofi -dmenu"

# selection
selection=$(ls "${wallpapersdir}" -t | $command) 
[[ -n "$selection" ]] || exit 1

# changing wallpaper
swww img --transition-type wipe --transition-step 180  ${wallpapersdir}/${selection}

exit 0
