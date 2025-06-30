# Default editor
export EDITOR=hx

# Disable oh-my-zsh update prompt
export DISABLE_UPDATE_PROMPT=true

# Link zsh history file to nexctloud folder
if [ -d "$HOME/janikv.cloud/home/$USERNAME" ]; then
  export HISTFILE="$HOME/janikv.cloud/home/$USERNAME/.zsh_history"
fi

# Add Flatpak binary share
XDG_DATA_DIRS="$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share"

# Export SSH agent socket
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)"
fi