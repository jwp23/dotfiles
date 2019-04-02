# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/josephpresley/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Setup pure prompt
autoload -U promptinit; promptinit
prompt pure

# zsh autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# source shell agnostic profile
source ~/.profile

