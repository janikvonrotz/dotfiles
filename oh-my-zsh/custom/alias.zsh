alias task=./task
compdef _task task
alias docker-ps-table="docker ps --format 'table {{.Names}}\t{{(.Label \"description\")}}'"
