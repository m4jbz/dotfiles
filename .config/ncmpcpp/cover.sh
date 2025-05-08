#!/bin/bash

# The music directory path
MUSIC_DIR="/mnt/media/Music"  # Change this to your music directory

# The cover image filename
COVER="/tmp/cover.jpg"

# Clear existing cover
if [ -e "$COVER" ]; then
    rm "$COVER"
fi

# Get current song's directory
file="$(mpc --format %file% current)"
dir="$MUSIC_DIR/$(dirname "$file")"

# Common album art filenames
art_names=("cover.jpg" "cover.png" "folder.jpg" "folder.png" "album.jpg" "album.png" "artwork.jpg" "artwork.png" "front.jpg" "front.png")

# Check for album art
for name in "${art_names[@]}"; do
    if [ -e "$dir/$name" ]; then
        cp "$dir/$name" "$COVER"
        break
    fi
done

# If no cover found, create blank file
if [ ! -e "$COVER" ]; then
    convert -size 1000x1000 xc:black "$COVER"
fi
