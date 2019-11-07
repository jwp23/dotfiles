#!/bin/bash

export GOPATH=$HOME/go

export PATH=$HOME/.local/bin:$PATH:$HOME/go/bin:/Users/josephpresley/Library/Python/2.7/bin:/Users/josephpresley/Library/Python/3.7/bin:$(gcloud info --format="value(installation.sdk_root)")/bin:$GOPATH/bin
source ~/.alias.sh

export GPG_TTY=$(tty)
export EDITOR=nvim

source ~/.homebrew

# initialize rbenv
eval "$(rbenv init -)"

