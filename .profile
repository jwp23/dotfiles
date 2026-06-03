#!/bin/bash

export GOPATH="${HOME}/go"
export PATH="${HOME}/.local/bin:$(brew --prefix)/google-cloud-sdk/bin:${PATH}:${GOPATH}/bin"

# shellcheck disable=SC1090
source ~/.alias.sh

export GPG_TTY=$(tty)
# [ -f ~/.gnupg/gpg-agent-info ] && source ~/.gnupg/gpg-agent-info
# if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
#     export GPG_AGENT_INFO
# else
#     eval "$( gpg-agent --daemon --options ~/.gnupg/gpg-agent.conf )"
# fi

# integrate pyenv with shell
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

function scratch(){
  hx ~/workspace/scratch/"${@}"
}

export EDITOR=hx
export VISUAL=hx

# startup ssh-agent
eval "$(ssh-agent -s)"

# load nvm

