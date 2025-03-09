#!/bin/bash

### Downscale scaled images for size saving ###

read -e -p "Enter folder path: " path

cd "$path" || exit

for file in *-scaled.*; do
    if [[ "$file" == *-scaled.* ]]; then
        # Default "upscale" script scales up 4 times.
        # ...and this downscaler scales down 2 times.
        # You can change that if you want, too.
        convert -resize 50% "$file" "${file%-scaled}-downscaled.png" 
        rm -- *-scaled.*
    fi
done
