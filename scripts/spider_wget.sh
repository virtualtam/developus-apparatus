#!/bin/bash
#
# Check if a file needs to be (re-)downloaded by comparing local
# and remote checksums
url=$1

dl=1
if [[ -f $file_path ]]; then
    local_size=$(ls -l $file_path | awk '{print $5}')
    remote_size=$(wget --spider $url 2>&1 | awk '/Length/ {print $2}')

    if [[ $local_size -eq $remote_size ]]; then
        echo "The file was previously downloaded"
        dl=0
    else
        echo "Corrupted file found, re-downloading..."
        rm -f $file_path
    fi
else
    echo "Downloading file..."
fi

[[ $dl -eq 1 ]] && wget $url -O $file_path
