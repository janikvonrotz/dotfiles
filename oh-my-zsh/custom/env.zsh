export EDITOR=hx

export DISABLE_UPDATE_PROMPT=true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if [ -d "$HOME/Sync" ]; then
  export HISTFILE="$HOME/Sync/.zsh_history"
fi
