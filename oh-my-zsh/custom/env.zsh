export EDITOR=hx

export DISABLE_UPDATE_PROMPT=true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if [ -d "$HOME/janikv.cloud/home/$USERNAME" ]; then
  export HISTFILE="$HOME/janikv.cloud/home/$USERNAME/.zsh_history"
fi

XDG_DATA_DIRS="$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share"
