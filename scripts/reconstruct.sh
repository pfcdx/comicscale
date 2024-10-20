#!/bin/bash

read -e -p "Enter folder path: " path

cd $path

for folder in *-extracted/; do
    zip -r "${folder%-extracted/}-upscaled.zip" "$folder" && rm -rf "$folder"
done