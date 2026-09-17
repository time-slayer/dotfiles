#!/usr/bin/env bash

DIR="$(cd "$(dirname "$0")" && pwd)"
LIST="$DIR/extensions.txt"
BACKUP="$LIST.bak"

usage() {
    cat <<EOF
Usage: $(basename "$0") <command>

Commands:
  e, export
  i, import
EOF
}

case "$1" in
    e|export)
        # check and backup already existing extensions
        if [ -f "$LIST" ]; then
            cp "$LIST" "$BACKUP"
            echo "Backed up previous extensions: $BACKUP"
        fi

        codium --list-extensions > "$LIST"
        echo "Extensions exported: $LIST"
        ;;

    i|import)
        # check if extensions exists before trying to install
        if [ ! -f "$LIST" ]; then
            echo "Error: extensions list $LIST not found"
            exit 1
        fi

        xargs -n 1 codium --install-extension < "$LIST"
        ;;

    *)
        usage
        exit 1
        ;;

esac
