#!/bin/bash

# vars
themes_dir="${HOME}/.config/rofi/themes/other_themes"
command="rofi -dmenu"
rofi_dir="${HOME}/.config/rofi/themes"

# selection
selection=$(ls "${themes_dir}" -t | $command) 
[[ -n "$selection" ]] || exit 1

# removes old themes
rm $rofi_dir/defalt.rasi
rm $rofi_dir/app-menu.rasi
rm $rofi_dir/shut-down.rasi
rm $rofi_dir/scripts.rasi

# adds new themes
cp $themes_dir/$selection/defalt.rasi $rofi_dir/defalt.rasi
cp $themes_dir/$selection/app-menu.rasi $rofi_dir/app-menu.rasi
cp $themes_dir/$selection/shut-down.rasi $rofi_dir/shut-down.rasi
cp $themes_dir/$selection/scripts.rasi $rofi_dir/scripts.rasi

exit 0
