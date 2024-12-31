#!/bin/bash

while true; do
    inotifywait -e modify "$HOME/notes.txt"
    magick -font "/usr/share/fonts/TTF/HackNerdFont-Regular.ttf" -background "#110015" -fill "#FF1163" -size 1440x850 -pointsize 20 caption:"$(cat $HOME/notes.txt)" $HOME/notes.png &&\
        swww img --resize fit -t none "$HOME/notes.png"
done
