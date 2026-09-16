#!/usr/bin/env bash

DIR="$(cd "$(dirname "$0")" && pwd)"
LIST="$DIR/extensions.txt"
BACKUP="$DIR/extensions.txt.bak"

# check and backup already existing extensions
if [ -f "$LIST" ]; then
    cp "$LIST" "$BACKUP"
    echo "Backed up previous extensions: $BACKUP"
fi

codium --list-extensions > "$LIST"
echo "Extensions exported: $LIST"
