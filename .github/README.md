# My dotfiles

My personal configuration files, tracked with a **bare git repository**.

## How it works

This repo's git directory lives at `~/.dotfiles`, and its work-tree is `$HOME` itself. That means the files here are checked out at their real, normal paths (e.g. `~/.config/fish`, `~/.gitconfig`).

To manage it, I use a shell alias instead of plain `git`:

```bash
alias dotgit="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
```

And use `dotgit` exactly like `git`:

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

## Specific configurations

### Firefox `userChrome.css`

Firefox normally stores configuration in a randomly generated profile folder, which isn't a stable path to track in git. To work around this, a dedicated profile is created at a permanent, tracked location: `~/.config/mozilla/firefox/dotfiles`.

**To set this up:**
1. Open Firefox and go to `about:profiles`.
2. Click **Create a New Profile** -> **Next**, and name it.
3. Click **Choose Folder...** and select the tracked directory: `~/.config/mozilla/firefox/dotfiles`.
4. Finish the wizard, then click **Set as default profile** under the new profile.
5. Restart Firefox.
