# Common
alias untar="tar -xvf"
alias task='./task'
alias tx=tmux

# Docker
alias dps="docker ps --format 'table {{.Names}}\t{{(.Label \"description\")}}'"
alias dkl="docker logs -f --tail 10"
alias dkp="docker ps"

# Python
alias python="python3"

# fzf
alias fzv='vim $(fzf)'

# Commands
#function pwgen() {< /dev/urandom tr -dc A-Za-z0-9 | head -c"$1"; echo}
