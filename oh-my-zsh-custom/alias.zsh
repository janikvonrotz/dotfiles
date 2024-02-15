# Common
alias untar="tar -xvf"
alias task='./task'
alias tx=tmux

# Docker
alias dps="docker ps --format 'table {{.Names}}\t{{(.Label \"description\")}}'"
alias dkl="docker logs -f --tail 10"
alias dkp="docker ps"

# fzf
alias fzv='vim $(fzf)'
