# Environment variables
set -gx EDITOR zeditor

# Abbreviations
abbr p poweroff
abbr r reboot
abbr gst "git status"
abbr gss "git status -s"
abbr ga "git add"
abbr gaa "git add -A"
abbr gc "git commit -m"
abbr gca "git commit -am"

# Aliases
alias dotgit="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias code="codium"
alias zed="zeditor"
