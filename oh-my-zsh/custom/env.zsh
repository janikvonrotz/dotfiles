# Default editor
export EDITOR=hx

# Disable oh-my-zsh update prompt
export DISABLE_UPDATE_PROMPT=true

# Link zsh history to nexctloud folder
if [ -d "$HOME/janikv.cloud/home/$USERNAME" ]; then
  export HISTFILE="$HOME/janikv.cloud/home/$USERNAME/.zsh_history"
fi

# Flatpak share
XDG_DATA_DIRS="$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share"

# SSH agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"