#!/usr/bin/env bash

# AI was used,sorry :(

CODENAME="$1"
ERROR_DOWN="$2"
API="https://download.lineageos.org/api/v2/devices/$CODENAME/builds"
ZIP_INFO=$(curl -fsSL "$API" |
    jq -cer '
        [.[0].files[]
        | select(.filename | endswith(".zip"))
        | {filename, filepath, sha256, url}][0]
    ')
ZIP_NAME=$(jq -r '.filename' <<< "$ZIP_INFO")
ZIP_PATH=$(jq -r '.filepath' <<< "$ZIP_INFO")
ZIP_SHA256=$(jq -r '.sha256' <<< "$ZIP_INFO")
ZIP_URL=$(jq -r '.url' <<< "$ZIP_INFO")

curl -fL --progress-bar --retry 3 \
    -o "$ZIP_NAME" "$ZIP_URL"
if [[ ! "echo "$ZIP_SHA256  $ZIP_NAME" | sha256sum -c -" 
   echo "$ERROR_DOWN"
else
export ZIP_NAME=$ZIP