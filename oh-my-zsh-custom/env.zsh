# n
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin" 

# pip user
export PATH="$HOME/.local/bin:$PATH"

# default editor
export EDITOR=vi
