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

# project seco
alias ssh-idv-dmo="ssh janik@seco-idvch-devmock.zh.adnovum.ch"
alias ssh-idv-nbd="ssh janik@seco-idvch-nb.zh.adnovum.ch"
alias ssh-idv-dep="ssh janik@seco-idvch-deploy.zh.adnovum.ch"
alias ssh-idv-pde="ssh janik@seco-idvch-proddemo.cust.adnovum.ch"

# project detect
alias ssh-det-bs2="ssh root@nevisrdf-behaviosec2.zh.adnovum.ch"
alias ssh-det-nd1="ssh root@nevisrdf-1.zh.adnovum.ch"
alias ssh-det-nd1="ssh root@nevisdemo1.cust.adnovum.ch"

# project icam
alias ssh-icm-s01="ssh janik@bund-iam-001-slave"
alias ssh-icm-m01="ssh janik@bund-iam-001-master"
alias ssh-icm-s02="ssh janik@bund-iam-002-slave"
alias ssh-icm-m02="ssh janik@bund-iam-002-master"
alias ssh-icm-s03="ssh janik@bund-iam-003-slave"
alias ssh-icm-m03="ssh janik@bund-iam-003-master"
alias ssh-icm-dad="ssh janik@bund-iam-dev-deploy"
alias ssh-icm-mad="ssh janik@bund-iam-dev-master"
alias ssh-icm-sad="ssh janik@bund-iam-dev-slave"

# auth tokens
export FEDICAM_BINREPO_TOKEN_FILE=~/fedicam-binrepo.token
export FEDICAM_BINREPO_USER=$USER
export FEDICAM_BINREPO_PASS="$(grep access_token  $FEDICAM_BINREPO_TOKEN_FILE | cut -d'"' -f4)"

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
