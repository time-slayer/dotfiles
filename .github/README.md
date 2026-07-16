# My dotfiles

My personal configuration files, tracked with a **bare git repository** – no symlinks, no [Stow](https://www.gnu.org/software/stow), just git managing files directly inside `$HOME`.

## How it works

This repo's git directory lives at `~/.dotfiles`, and its work-tree is `$HOME` itself. That means the files here are checked out at their real, normal paths (e.g. `~/.config/fish`, `~/.gitconfig`) – no symlink indirection required.

To manage it, I use a shell alias instead of plain `git`:

```fish
alias dotgit="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
```

Every day-to-day command, like `status`, `add`, `commit`, `push`, `log` – goes through `dotgit` instead of `git`, e.g.:

```bash
dotgit status
dotgit add .config/hyprland
dotgit commit -m "tweak hyprland"
dotgit push
```

## Setting up on a new machine

```bash
# Clone the bare repo
git clone --bare git@github.com:time-slayer/dotfiles.git ~/.dotfiles

# Set up the dotgit alias, then:
dotgit checkout
```

Then hide untracked files from `dotgit status` so it doesn't get noisy with the rest of home directory:

```bash
dotgit config --local status.showUntrackedFiles no
```