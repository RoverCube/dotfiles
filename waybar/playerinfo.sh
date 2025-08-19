#! /bin/bash

text=$(playerctl metadata --format '{{artist}} - {{title}}')
maxlength=48
# if the text is longer than the max length, truncate it and add "..."
if [ ${#text} -gt $maxlength ]; then
    text=${text:0:$maxlength-3}"..."
fi
if [ ${#text} -eq 0 ]; then
    echo "Nothing Playing :]"
else
    if [ ${#text} -gt $maxlength ]; then
        text=${text:0:$maxlength-3}"..."
    else
        echo $text
    fi
fi
