# dotfiles

Vim, helix, zsh, fish, fzf, termux and much more.

## Usage

Clone this repo.

```bash
cd ~
git clone git@github.com:janikvonrotz/dotfiles.git
cd dotfiles
```

Run `./task help` for details.

### Steamdeck

If you have not already, use `passwd` to create a password for the deck user.

Disable read-only mode: `sudo steamos-readonly disable`

Initialize the pacman keyring:`sudo pacman-key --init`

Populate the pacman keyring with the default Arch Linux keys: `sudo pacman-key --keyserver hkp://keyserver.ubuntu.com --refresh-keys`

Try installing a package: `sudo pacman -S vi`
