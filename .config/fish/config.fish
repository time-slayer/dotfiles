# Environment variables
set -gx EDITOR zeditor

# Abbreviations
abbr p poweroff
abbr r reboot
abbr gst "git status"
abbr gss "git status -s"
abbr gsts "git status -s"
abbr ga "git add"
abbr gaa "git add -A"
abbr gc "git commit -m"
abbr gcm "git commit -m"
abbr gca "git commit -am"
abbr gcam "git commit -am"
abbr gamend "git commit --amend --no-edit"
abbr gamendm "git commit --amend -m"
abbr glg "git log"
abbr glo "git log --oneline"
abbr glgo "git log --oneline"

# Aliases
alias dotgit="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias code="codium"
alias zed="zeditor"
