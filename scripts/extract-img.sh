#!/bin/bash

### Extract contents of .cb* files ###

read -e -p "Enter path (where comic files are kept -- in .cb* format): " folder

cd $folder

for file in *.cbz *.cbr; do
    (
        if [[ "$file" == *.cbz ]]; then
            cp "$file" "$file".zip
            unzip -d "${file%.cbz}-extracted" "$file".zip
            rm "$file".zip
        else
            mkdir "${file%.cbr}-extracted"
            cp "$file" "${file%.cbr}-extracted/$file".rar
            cd "${file%.cbr}-extracted"
            unrar x "$file".rar
            rm "$file".rar
            cd $folder
        fi
    ) &
done
wait
