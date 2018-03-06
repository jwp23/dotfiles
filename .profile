#!/bin/bash

export PATH=$HOME/.local/bin:$PATH
source ~/.alias.sh
source ~/.omniex.sh

export GPG_TTY=$(tty)

# added by travis gem
[ -f /home/jpresley/.travis/travis.sh ] && source /home/jpresley/.travis/travis.sh

