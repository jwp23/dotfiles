# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jpresley/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# set zsh function paths
fpath=( "$HOME/.zsh/site-functions" $fpath)

# Initialize prompt system
autoload -U promptinit; promptinit
prompt pure

# zsh specific plugins/add-ons
source ~/.zsh/site-functions/zsh-autosuggestions.zsh

# source shell agnostic profile
source ~/.profile



# added by travis gem
[ -f /home/jpresley/.travis/travis.sh ] && source /home/jpresley/.travis/travis.sh
