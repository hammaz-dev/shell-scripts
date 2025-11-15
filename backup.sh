#!/bin/bash
# Simple backup script

SRC="$HOME/hammaz"
DEST="$HOME/backups/backup_$(date +%Y%m%d_%H%M%S)"

mkdir -p "$DEST"

if [ -d "$SRC" ]; then
    cp -r "$SRC"/* "$DEST"/ 2>/dev/null || true
    echo "Backup completed at $DEST"
    echo "Files inside backup folder:"
    ls -la "$DEST"
else
    echo "ERROR: Source folder does not exist: $SRC"
fi
