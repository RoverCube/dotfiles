#!/bin/sh
# Changes the wallpaper to a randomly chosen image in a given directory
# at a set interval.

if [ $# -lt 1 ] || [ ! -d "$1" ]; then
	printf "Usage:\n\t\e[1m%s\e[0m \e[4mWALLPAPER-DIRECTORY\e[0m\n" "$0"
	printf "\tChanges the wallpaper to a randomly chosen image in WALLPAPER-DIRECTORY\n"
	exit 1
fi

# See swww-img(1)
RESIZE_TYPE="fit"
export SWWW_TRANSITION_FPS="${SWWW_TRANSITION_FPS:-60}"
export SWWW_TRANSITION_STEP="${SWWW_TRANSITION_STEP:-2}"


find "$1" -type f \
| while read -r img; do
	echo "$(</dev/urandom tr -dc a-zA-Z0-9 | head -c 8):$img"
done \
| sort -n | cut -d':' -f2- \
| while read -r img; do
	swww img --transition-type wipe --transition-step 180 "$img"
done
