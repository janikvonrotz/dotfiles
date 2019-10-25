# .bashrc

# show user, host and directory on prompt
export PS1='$(whoami)@$(hostname):$(pwd)# '

# source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# general aliases
alias cat-cer="openssl x509 -text -in"
alias cat-key="keytool -list -keystore"
alias l="ls -ls"
alias git-log="git log --oneline --decorate"
alias anp="ansible-playbook"
alias untar="tar -xvzf"
alias intelibitch="nohup /local/idea-IU/bin/idea.sh &"
alias grp-rec="git log --pretty=format: --name-only --diff-filter=A  | sort -u | grep -rnw"

# auto completion scripts 
test -f ~/.pass-completion.bash && . $_
test -f ~/.git-completion.bash && . $_
test -f ~/.ssh-completion.bash && . $_
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# fzf commands
## fbr - checkout local git branch
fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}
## fd - cd to selected directory
fd() {
    local dir
    dir=$(find ${1:-.} -path '*/\.*' -prune \
        -o -type d -print 2> /dev/null | fzf +m) &&
    cd "$dir"
}

# history
## increase history size
export HISTSIZE=10000
## append commands to history file instead of overwriting
shopt -s histappend
## append commands immediately
PROMPT_COMMAND='history -a'
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
