#!/bin/bash
#

# Set some variables
wall_dir="${HOME}/.config/scripts/rofi-menu/"
cache_dir="${HOME}/.cache/thumbnails/wal_selector"
rofi_command="rofi -dmenu -theme ${HOME}/.config/rofi/themes/RoverDefalt.rasi"

# Select a picture with rofi
wall_selection=$(ls "${wall_dir}" -t | while read -r A ; do  echo -en "$A\x00icon\x1f""${cache_dir}"/"$A\n" ; done | $rofi_command)

# Set the wallpaper with waypaper
[[ -n "$wall_selection" ]] || exit 1
${wall_dir}${wall_selection}

exit 0
