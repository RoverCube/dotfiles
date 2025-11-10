#! /bin/bash

# Playerctl variables
title="playerctl metadata xesam:title"
album="playerctl metadata xesam:album"
artists="playerctl metadata xesam:artist"
art="playerctl metadata mpris:artUrl"

# changes current music album cover
rm ${HOME}/.config/rofi/current-music.png

$(echo $($art) | cut -c 8-)

if [ $(playerctl status) =  ]; then
    cp ${HOME}/.config/rofi/no-music.png ${HOME}/.config/rofi/current-music.png
    echo Nothing playing | rofi -dmenu -theme "${HOME}/.config/rofi/themes/music"
else
    cp $(echo $(playerctl metadata mpris:artUrl) | cut -c 8-) ${HOME}/.config/rofi/current-music.png
    echo -e $($title) \\nBy $($artists) \\nAlbum - $($album)\\n\\n"󰎇 - Music stabilizes my soul - 󰎇" | rofi -dmenu -theme "${HOME}/.config/rofi/themes/music"
fi


exit 0
