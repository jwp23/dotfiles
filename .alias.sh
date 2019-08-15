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
alias dce='docker-compose exec'
alias dcr='dcd && dcu'
alias dcu='docker-compose up -d'
alias di='docker images'
alias dps='docker ps'

alias fe='firefox-esr -p esr -no-remote'
alias google='googler -n 5'

alias g-='git checkout -'
alias ga='git add -A'
alias gb='git branch -a'
alias gbc='gm && gu && gp && gpl' # git branch clean
alias gc='git commit -m'
alias gca='git add -A && git commit -m'
alias gcd='git checkout develop'
alias gco='git checkout'
alias gcount='git rev-list master.. --count' # number of commits since master
alias gcountd='git rev-list develop.. --count' # number of commits since develop
alias gdiff='git diff'
alias gd='gdiff'
alias gm='git checkout master'
alias gnb='git checkout -b'
alias gp='git remote prune origin'
alias gpl='git branch --merged master | grep -v "master$" | xargs git branch -d'
alias gpld='git branch --merged develop | grep -vE "develop|master" | xargs git branch -D'
alias gpo='git push origin $(git symbolic-ref -q --short HEAD)'
alias gpof='git push -f origin $(git symbolic-ref -q --short HEAD)'
alias gpou='git push -u origin $(git symbolic-ref -q --short HEAD)'
alias gr='cd $(git rev-parse --show-toplevel)' # takes you to root of git repo
alias grd='git rebase develop'
alias grh='git reset --hard'
alias gri='git rebase -i HEAD~"$(gcount)"' # interactive rebase entire branch based on 'master' branch
alias grid='git rebase -i HEAD~"$(gcountd)"' #interactive rebase entire branch based on 'develop' branch
alias grm='git rebase master'
alias gs='git status'
alias gsc='git stash clear'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gst='git stash'
alias gu='git pull' # git update
alias gum='gm && gu' # git update master
alias gub='gm && gu && g- && grm' # git update branch from master
alias gubd='gcd && gu && g- && grd' # git update branch from develop
alias gup='gm && gu && g- && grm && gpof' # git update branch && gpof

alias ll='exa -al --color=always --git'

alias src='cd ~/src'
alias s='cd ~/workspace/sadasys'

alias travis-trigger='git commit --allow-empty -m "Trigger travis build" && gpo'
alias tt='travis-trigger'

alias update='exec $SHELL'
alias u='update'

alias v='nvim'
alias va='v ~/.alias.sh'
alias valias='v ~/.alias.sh'
alias vi='nvim'
alias vim='nvim'

alias w='cd ~/workspace'
alias workspace='cd ~/workspace'
