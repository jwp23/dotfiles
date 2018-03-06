#!/bin/bash
alias bc='bc -l'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias dc='docker-compose'
alias dcd='docker-compose down'
alias dcr='dcd && dcu'
alias dcu='docker-compose up -d'
alias dps='docker ps'
alias ga='git add -A'
alias gb='git branch -a'
alias gca='git add -A && git commit -m'
alias gcount='git rev-list master.. --count' # numbers of commits since master
alias gdiff='git diff'
alias gd='gdiff'
alias gp='git remote prune origin'
alias gpo='git push origin $(git symbolic-ref -q --short HEAD)'
alias gpof='git push -f origin $(git symbolic-ref -q --short HEAD)'
alias gpou='git push -u origin $(git symbolic-ref -q --short HEAD)'
alias gr='cd $(git rev-parse --show-toplevel)' # takes you to root of git repo
alias gri='git rebase -i HEAD~"$(gcount)"' # interactive rebase entire branch
alias gs='git status'
alias ll='exa -al --color=always --git'
alias src='cd ~/src'
alias workspace='cd ~/workspace'

