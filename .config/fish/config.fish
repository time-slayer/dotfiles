# ==============================
# Environment variables
# ==============================
set -gx EDITOR zeditor

# ==============================
# Abbreviations
# ==============================

# --- System ---
abbr p poweroff
abbr r reboot

# --- Git (Oh My Zsh style) ---
# --- Add ---
abbr ga "git add"
abbr gaa "git add --all"

# --- Commit ---
abbr gc "git commit --message"
abbr gc! "git commit --amend"
abbr gca "git commit --all --message"
abbr gca! "git commit --all --amend"
abbr gcam "git commit --all --message"
abbr gcam! "git commit --all --amend --message"
abbr gcan! "git commit --all --no-edit --amend"
abbr gcm "git commit --message"
abbr gcm! "git commit --amend --message"
abbr gcmsg "git commit --message"

# --- Diff ---
abbr gd "git diff"
abbr gds "git diff --staged"
abbr gdst "git diff --stat"

# --- Log ---
abbr glg "git log --stat"
abbr glgo "git log --oneline"
abbr glo "git log --oneline"

# --- Status ---
abbr gss "git status --short"
abbr gst "git status"
abbr gsts "git status --short"

# ==============================
# Aliases
# ==============================
alias dotgit="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias code="codium"
alias zed="zeditor"
