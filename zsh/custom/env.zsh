# Add local bin to path
export PATH=~/bin:~/.local/bin:$PATH

# Default editor
export EDITOR=helix

# Disable oh-my-zsh update prompt
export DISABLE_UPDATE_PROMPT=true

# Link zsh history file to nexctloud folder
if [ -d "$HOME/janikv.cloud/home/$USERNAME" ]; then
  export HISTFILE="$HOME/janikv.cloud/home/$USERNAME/.zsh_history"
fi

# Add Flatpak binary share
XDG_DATA_DIRS="$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share"
