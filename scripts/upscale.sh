#!/bin/bash

### Upscales only one folder's contents ###

REALESRGAN_PATH=""

read -e -p "Enter folder path: " path

cd "$path" || exit

process=0
for file in *.jpg *.jpeg *.png; do
    if [[ "$file" != *-scaled.* ]]; then
        "$REALESRGAN_PATH" -i "$file" -o "${file%.*}-scaled.png" -n realesrgan-x4plus-anime -s 2 &
        process=$((process+1))
        if [[ $process -ge 2 ]]; then # Means 2 processes atime, you can increase that if you want
            wait -n
            process=$((process-1))
        fi
    fi
done
wait
for file in *.jpg *.jpeg *.png; do
    if [[ "$file" != *-scaled.* ]]; then
        rm -- "$file"
    fi
done
