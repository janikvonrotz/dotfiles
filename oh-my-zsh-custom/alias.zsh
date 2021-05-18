# Ansible
alias anp="ansible-playbook"
alias av="ansible-vault"
alias ai="ansible-inventory"

# Common
alias untar="tar -xvf"
alias task='./task'
alias tx=tmux

# Docker
alias dps="docker ps --format 'table {{.Names}}\t{{(.Label \"description\")}}'"

# Python
alias python="python3"

# fzf
alias fzv='vim $(fzf)'

# Commands
function pwgen() {< /dev/urandom tr -dc A-Za-z0-9 | head -c"$1"; echo}
