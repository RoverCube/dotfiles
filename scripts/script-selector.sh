#!/bin/bash
#

# Variables
scripts_dir="${HOME}/.config/scripts/rofi-menu/"
rofi_command="rofi -dmenu -theme ${HOME}/.config/rofi/themes/scripts"

# Select a script with rofi
selection=$(ls "${scripts_dir}" | $rofi_command)

# Activates script
[[ -n "$selection" ]] || exit 1
${scripts_dir}${selection}

exit 0
