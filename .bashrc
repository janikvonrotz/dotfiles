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
fbr() {
    local branches branch
    branches=$(git --no-pager branch -vv) &&
    branch=$(echo "$branches" | fzf +m) &&
    git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}
