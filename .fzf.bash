# Setup fzf
# ---------
if [[ ! "$PATH" == */home/janik/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/janik/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/janik/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/janik/.fzf/shell/key-bindings.bash"
