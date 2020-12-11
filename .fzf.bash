# Setup fzf
# ---------
if [[ ! "$PATH" == */home/janikvonrotz/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/janikvonrotz/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/janikvonrotz/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/janikvonrotz/.fzf/shell/key-bindings.bash"
