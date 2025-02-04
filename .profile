#!/bin/bash

export GOPATH=$HOME/go
# shellcheck disable=SC2155
export PATH=$HOME/.local/bin:$PATH:$GOPATH/bin:/Users/josephpresley/Library/Python/2.7/bin:/Users/josephpresley/Library/Python/3.7/bin:$(gcloud info --format="value(installation.sdk_root)")/bin

# shellcheck disable=SC1090
source ~/.alias.sh

export GPG_TTY=$(tty)
[ -f ~/.gnupg/gpg-agent-info ] && source ~/.gnupg/gpg-agent-info
if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
    export GPG_AGENT_INFO
else
    eval "$( gpg-agent --daemon --options ~/.gnupg/gpg-agent.conf )"
fi

# integrate pyenv with shell
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export EDITOR=nvim

# startup ssh-agent
eval "$(ssh-agent -s)"

# initialize rbenv
eval "$(rbenv init -)"

eks-setup() {
    aws eks update-kubeconfig --name "$1" --region us-west-2
}

cp_pod() {
  kubectl get pods | grep "$1" | awk '{print $1}' | tr -d '\n'
}

b64() {
  echo "$1" | tr -d '\n' | base64 | tr -d '\n'
}

get-autoscaler-logs() {
  cluster_autoscaler="$(
  kubectl get pods -n kube-system| grep cluster-autoscaler | awk '{print $1}' | tr -d '\n'
)"
  kubectl logs -f "${cluster_autoscaler}" -n kube-system
}
