# dotfiles

My personal configuration files, tracked with a **bare git repository**.

## What's tracked

- [Firefox](https://github.com/mozilla-firefox/firefox)
- [Fish](https://github.com/fish-shell/fish-shell)
- [Git](https://github.com/git/git)
- [Hyprland](https://github.com/hyprwm/Hyprland)
- [VSCodium](https://github.com/vscodium/vscodium)
- [Zed](https://github.com/zed-industries/zed)

## Installation

Clone the repository and check out the files:

> [!WARNING]
> This will overwrite any existing configs that conflict with the ones tracked here.

```bash
git clone --bare https://github.com/time-slayer/dotfiles ~/.dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout -f
```

## Usage

This repo's git directory lives at `~/.dotfiles`, and its work-tree is `$HOME` itself. That means the files here are checked out at their real, normal paths (e.g. `~/.config/fish`, `~/.gitconfig`).

To manage it, I use a shell alias instead of plain `git`:

```bash
alias dotgit="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
```

And use `dotgit` exactly like `git`:

```bash
dotgit status
dotgit add .config/hypr
dotgit commit -m "tweak hyprland"
dotgit push
```

I also hide untracked files from `dotgit status` so it doesn't get noisy with the rest of my home directory:

```bash
dotgit config --local status.showUntrackedFiles no
```

## Specific configurations

### Firefox

Firefox normally stores configuration in a randomly generated profile folder, which isn't a stable path to track in git. To work around this, a dedicated profile is created at a permanent, tracked location: `~/.config/mozilla/firefox/dotfiles`.

**To set this up:**

1. Open Firefox and go to `about:profiles`.
2. Click **Create a New Profile** -> **Next**, and name it.
3. Click **Choose Folder...** and select the tracked directory: `~/.config/mozilla/firefox/dotfiles`.
4. Finish the wizard, then click **Set as default profile** under the new profile.
5. Restart Firefox.

### VSCodium extensions

Extensions are managed via a custom `ext.sh` script located at `.config/vscodium-extensions/ext.sh`:

```bash
cd ~/.config/vscodium-extensions

# install extension list
./ext.sh i

# export installed extensions
./ext.sh e
```
