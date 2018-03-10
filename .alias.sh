#!/bin/bash
alias a='alias | grep'

alias bc='bc -l'

alias c='cd ~/.cfg'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ca='config add'
alias cdiff='config diff'
alias cm='config commit -m'
alias cpo='config push origin'
alias cs='config status'

alias dc='docker-compose'
alias dcd='docker-compose down'
alias dcr='dcd && dcu'
alias dcu='docker-compose up -d'
alias dps='docker ps'

alias g-='git checkout -'
alias ga='git add -A'
alias gb='git branch -a'
alias gc='git commit -m'
alias gca='git add -A && git commit -m'
alias gcount='git rev-list master.. --count' # numbers of commits since master
alias gdiff='git diff'
alias gd='gdiff'
alias gm='git checkout master'
alias gp='git remote prune origin'
alias gpl='git branch --merged master | grep -v 'master$' | xargs -r git branch -d'
alias gpo='git push origin $(git symbolic-ref -q --short HEAD)'
alias gpof='git push -f origin $(git symbolic-ref -q --short HEAD)'
alias gpou='git push -u origin $(git symbolic-ref -q --short HEAD)'
alias gr='cd $(git rev-parse --show-toplevel)' # takes you to root of git repo
alias gri='git rebase -i HEAD~"$(gcount)"' # interactive rebase entire branch
alias gs='git status'

alias ll='exa -al --color=always --git'

alias src='cd ~/src'

alias update='exec $SHELL'
alias u='update'

alias v='nvim'
alias va='v ~/.alias.sh'
alias valias='v ~/.alias.sh'
alias vi='nvim'
alias vim='nvim'

alias w='cd ~/workspace'
alias workspace='cd ~/workspace'

