#!/bin/bash

export GOPATH=$HOME/go

export PATH=$HOME/.local/bin:$PATH:$GOPATH/bin:/Users/josephpresley/Library/Python/2.7/bin:/Users/josephpresley/Library/Python/3.7/bin:$(gcloud info --format="value(installation.sdk_root)")/bin

source ~/.alias.sh

export GPG_TTY=$(tty)
export EDITOR=nvim

# startup ssh-agent
eval "$(ssh-agent -s)"

# initialize rbenv
eval "$(rbenv init -)"

