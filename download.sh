#!/bin/bash

URL="$1"
DEST="$HOME/downloads"

mkdir -p "$DEST"

if [ -z "$URL" ]; then
    echo "Usage: ./download.sh <url>"
    exit 1
fi

wget "$URL" -P "$DEST"
echo "File saved to $DEST"
