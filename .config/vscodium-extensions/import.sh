#!/usr/bin/env bash

DIR="$(cd "$(dirname "$0")" && pwd)"
LIST="$DIR/extensions.txt"

# check if extensions exists before trying to install
if [ ! -f "$LIST" ]; then
    echo "Error: extensions list $LIST not found"
    exit 1
fi

xargs -n 1 codium --install-extension < "$LIST"