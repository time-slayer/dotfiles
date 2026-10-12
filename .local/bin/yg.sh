#!/usr/bin/env bash

accent=""
phrase_args=()

usage() {
    cat <<EOF
Usage: $(basename "$0") [options] <phrase>

Options:
  -a, --accent {us|uk|aus|all}      specify accent for search (default: all)
      --us, --uk, --aus, --all      shortcuts for specific accent
  -h, --help                        show this help
EOF
}

set_accent() {
    case "$1" in
        us | uk | aus) accent="$1" ;;
        all) accent="" ;;
        *)
            echo "Error: invalid accent '$1'"
            exit 1
            ;;
    esac
}

# TODO: add -p flag to print the url instead of opening it
# TODO: support '--' to separate options from the phrase
while [[ $# -gt 0 ]]; do
    case "$1" in
        -a | --accent)
            if [[ $# -lt 2 ]]; then
                echo "Error: $1 requires an argument"
                exit 1
            fi
            set_accent "$2"
            shift 2
            ;;

        --us | --uk | --aus | --all)
            set_accent "${1#--}"
            shift
            ;;

        -h | --help)
            usage
            exit 0
            ;;

        -* | --*)
            echo "Error: unknown option '$1'"
            exit 1
            ;;

        *)
            phrase_args+=("$1")
            shift
            ;;
    esac
done

if [[ ${#phrase_args[@]} -eq 0 ]]; then
    usage
    exit 1
fi

phrase="${phrase_args[*]}"
phrase="${phrase// /_}"
url="https://youglish.com/pronounce/$phrase/english"

[[ -n "$accent" ]] && url+="/$accent"

xdg-open "$url"
